import os
import sys
import json
import re
from pathlib import Path
from collections import OrderedDict
from rich.progress import track
from rich.console import Console
console = Console()
from get_structs_fields import GetStructsAndFields
import llvm_to_json
from fields_index_name_parser import FieldParser
import comm_funcs

def buildStrcutsMap(IR_file, all_structs):

    '''
    This function is used to build a map for structs.
    '''

    a = GetStructsAndFields(IR_file, "temp.json")
    a.getNeededStructsAndFields(all_structs)
    inf = open("temp.json")
    all_data = eval(inf.read())
    struct_map = {}
    for item in all_structs:
        struct_map[item] = []
    for parent,son in all_data.items():
        for key_in_son,value_in_son in son.items():
            # console.print(value_in_son[1])
            if value_in_son[1].startswith("%struct"):
                struct_name = value_in_son[1].split(" = ")[0].split("%struct.")[1]
                struct_name = struct_name.strip("*")
                if struct_name != parent:
                    if parent in struct_map:
                        if struct_name not in struct_map[parent]:
                            struct_map[parent].append(struct_name)
                    else:
                        struct_map[parent] = [struct_name]
    console.print(f"[bold magenta][+][/bold magenta] Initially, struct_map is [dim]{struct_map}[/dim]")
    # os.system("rm -f temp.json")

    return struct_map

def updateStructsMapAfterFPAndTP(struct_map, all_structs):

    '''
    This function is used to update structs map after removing FP structs and finding TP structs.
    '''

    temp = {}
    for son in struct_map:
        temp[son] = struct_map[son]
    
    removed_strcs = []
    for parent,son in struct_map.items():
        if parent not in all_structs:
            removed_strcs.append(parent)
    for parent,son in struct_map.items():
        for strc in son:
            if strc not in all_structs:
                son.remove(strc)
    for parent,son in temp.items():
        if parent not in all_structs:
            for strc in son:
                if strc not in struct_map:
                    struct_map[strc] = []
    for parent,son in struct_map.items():
        if parent not in all_structs:
            for strc in son:
                if strc not in struct_map:
                    struct_map[strc] = []
    for removed_strc in removed_strcs:
        del struct_map[removed_strc]
    for item in all_structs:
        if item not in struct_map:
            struct_map[item] = []
    
    console.print(f"[bold magenta][+][/bold magenta] After filtering structs, struct_map is [dim]{struct_map}[/dim]")
    return struct_map

def combineFPAndTP(all_structs, TP_structs):

    '''
    This function is used to combine FP-removed structs and TP structs.
    '''

    for item in TP_structs:
        if item not in all_structs:
            all_structs.append(item)
    
    if 'anon' in all_structs:
        all_structs.remove('anon')
    
    return all_structs

def getFuncsForStruct(filename, struct):

    '''
    This function is used to get all functions for a struct, each function calls the struct.
    '''

    fParser = FieldParser(filename, struct)
    # console.print(f"[bold magenta][+][/bold magenta] Parsing {struct}'s fields...")
    fIndex = fParser.getFieldsIndexAndName()

    funcs = {}
    funcs = llvm_to_json.makeFullMap("temp_getAllfuncs", fIndex, struct)
    console.print(f"[bold magenta][+][/bold magenta] Found all functions for {struct}!")

    return funcs

def findFuncsFromMemcpy(IR_file):

    '''
    This function is used to find all functions that call memcpy function.
    '''

    datas = []
    with open(IR_file, 'r') as f:
        datas = f.readlines()

    TP_funcs = []
    memcpy_label = "call void @llvm.memcpy.p0i8.p0i8.i64"

    for i in range(len(datas)):
        if memcpy_label in datas[i]:
            # console.print(datas[i])
            for j in range(i):
                if datas[i-j].startswith("define"):
                    p = re.compile(r"[@](.*?)[(]", re.S)
                    funcname = re.findall(p, datas[i-j])[0]
                    if funcname not in TP_funcs:
                        TP_funcs.append(funcname)
                    break
    
    # console.print(f"[bold green][+][/bold green] Found TP functions: {TP_funcs}! :thumbs_up:")

    return TP_funcs

def buildStructToFunctionsMap(IR_file, all_structs):

    '''
    This function is used to find all functions for each struct and build struct->functions map.
    '''

    # cmd_getAllfuncs = f"opt-10 -load ../llvmLibs/libMutateMod.so --legacy-mutate --disable-output {IR_file} > temp_getAllfuncs 2>&1"
    cmd_getAllfuncs = f"opt-12 -load ../llvmLibs_12/libMutateMod.so --legacy-mutate --disable-output {IR_file} > temp_getAllfuncs 2>&1"
    os.system(cmd_getAllfuncs)

    if 'anon' in all_structs:
        all_structs.remove('anon')

    structTofunctions = {}
    for struct in all_structs:
        temp = {}
        temp = getFuncsForStruct(IR_file, struct)
        temp_funcs = []
        for value in temp.values():
            if value["parent_function"] not in temp_funcs:
                temp_funcs.append(value["parent_function"])
        structTofunctions[struct] = temp_funcs
    
    # results = json.dumps(structTofunctions, sort_keys=False, indent=4, separators=(',', ': '))
    # with open("test", 'w') as outfile:
    #     outfile.writelines(results)
    os.system("rm -f temp_getAllfuncs")
    
    return structTofunctions

def buildFunctionToStructsMap(structTofunctionsMap):

    '''
    This function is used to build a function-to-structs map. Each key is one function, each value contains structs called in this function.
    '''
    
    functionToStructs = {}
    for key in structTofunctionsMap.keys():
        funcs = structTofunctionsMap[key]
        # console.print(f"[bold red][DEBUG][/bold red] funcs is: {funcs}")
        for func in funcs:
            if func not in functionToStructs:
                functionToStructs[func] = [key]
            else:
                functionToStructs[func].append(key)

    # results = json.dumps(functionToStructs, sort_keys=False, indent=4, separators=(',', ': '))
    # with open("test", 'w') as outfile:
    #     outfile.writelines(results)
    
    return functionToStructs

def findReadOrWriteForStruct(funcname, struct, IR_file):

    '''
    This function is used to get information about operations done by function on structs, whether the function write or read structs,
    it is called by function `getFunctionToStructsOperations` in this script.
    '''

    operations = []
    datas = []
    with open(IR_file, 'r') as f:
        datas = f.readlines()
    
    function_contents, start, end = comm_funcs.find_function(datas, funcname)
    symbol = f"getelementptr inbounds %struct.{struct}, %struct.{struct}*"
    number = ''
    for i in range(len(function_contents)):
        if symbol in function_contents[i]:
            number = function_contents[i].split(" = ")[0].split("  ")[1]
            for j in range(i+1, len(function_contents)):
                if len(operations) == 2:
                    break
                if number in function_contents[j]:
                    if "store" in function_contents[j]:
                        if "write" not in operations:
                            operations.append("write")
                    elif "load" in function_contents[j]:
                        if "read" not in operations:
                            operations.append("read")

    return operations

def getFunctionToStructsOperations(functionToStructs, IR_file):

    '''
    This function is used to get information about operations done by function on structs, whether the function write or read structs.
    '''

    new_functionToStructs = {}
    for func in functionToStructs.keys():
        structs = functionToStructs[func]
        new_structs = []
        for struct in structs:
            a = {struct : [""]}
            new_structs.append(a)
        new_functionToStructs[func] = new_structs

    for func in new_functionToStructs.keys():
        structs = new_functionToStructs[func]
        for struct in structs:
            for key in struct.keys():
                operations = findReadOrWriteForStruct(func, key, IR_file)
                struct[key] = operations

    # results = json.dumps(new_functionToStructs, sort_keys=False, indent=4, separators=(',', ': '))
    # with open("test2", 'w') as outfile:
    #     outfile.writelines(results)

    return new_functionToStructs
