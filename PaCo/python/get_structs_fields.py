#!/usr/bin/env python3

import sys
import os
import re
import json
from rich.console import Console
console = Console()

class GetStructsAndFields:
    
    def __init__(self, fname, outfile):
        self.fname = fname
        self.outfile = outfile
        return
    
    def getNeededStructsAndFields(self, needed_structs):

        '''
        This function is used to get needed structs and fields.
        ''' 

        ''' This part of code is used to get llvm-based type by using a pass to analyze the IR file. '''
        command = "opt-12 -load ../llvmLibs_12/libStructList.so --legacy-struct-list --disable-output "+ self.fname +" > temp.txt 2>&1"
        os.system(command)
        types_contents = ''
        with open("temp.txt", 'r') as f:
            types_contents = f.readline()[3:-1]
        types_contents_then = types_contents.split("[+]")
        # os.system("rm -f temp.txt")
        types = {} # types will store all structs in the IR file and their elements' data types. The key is struct, value is data types.
        for item in types_contents_then:
            if "struct." in item.split(":")[0]:
                types[(item.split(":")[0].split("struct.")[1])] = item.split(":")[1][0:-1]
            elif "union." in item.split(":")[0]:
                types[(item.split(":")[0].split("union.")[1])] = item.split(":")[1][0:-1]
        
        # ''' This part of code is used to output all structs in the target IR file. '''
        # allStructs = list(types.keys())
        # for i in range(0, len(allStructs)):
        #     allStructs[i] = allStructs[i] + "\n"
        # with open("all_Structs_List.txt", 'w') as f:
        #     f.writelines(allStructs)
        # console.print(types)

        datas = [] # used to store instructions read from the IR file.
        with open(self.fname, 'r') as f:
            datas = f.readlines()

        founded_structs = [] # used to store founded structs
        AllstructsAndfields = {} # used to store all output info
        AllstructsAndEles = []
        
        # struct = '' # is founded struct name
        for i in range(0, len(datas)):
            if "tag: DW_TAG_structure_type" in datas[i] and "name: " in datas[i]:
                p1 = re.compile(r"[\"](.*?)[\"]", re.S)
                struct = re.findall(p1, datas[i])[0].strip()
                if struct not in founded_structs and "elements: " in datas[i] and struct in needed_structs:
                    structAndEles = []
                    structAndEles.append(struct)
                    founded_structs.append(struct)
                    p = re.compile(r"[(](.*?)[)]", re.S)
                    struct_tags = re.findall(p, datas[i])
                    numb = struct_tags[0].split("elements: ")[1].split(",")[0]
                    structAndEles.append(numb)

                    fields_types = [] # This is used to store field's llvm-based data types, like i32, i16.
                    fields_types = types[struct].split(";")
                    structAndEles.append(fields_types)
                    # print(f"[+] fields_types is {fields_types}")
                    
                    AllstructsAndEles.append(structAndEles)
                if len(founded_structs) == len(needed_structs):
                    break

    
        for item in AllstructsAndEles:
            struct_name = item[0]
            metadata_set_numb = item[1] # metadata_set_numb is elements' metadata set number of parent struct.
            fields_types2 = item[2] # fields_types2 is elements' llvm-based types
            metadata_set = [] # metadata_set is used to store all elements of parent struct.
            fields = {} # used to store all fields of the founded struct
            for i in range(0, len(datas)):        
                if metadata_set_numb != '' and datas[i].startswith(metadata_set_numb) and datas[i].split(" = ")[0] == metadata_set_numb:
                    p1 = re.compile(r"[{](.*?)[}]", re.S)
                    fields_set = re.findall(p1, datas[i])
                    metadata_set = fields_set[0].split(", ")
                    # print("metadata_set_numb is: {}".format(metadata_set_numb))
                    # print("metadata_set is: {}".format(metadata_set))
                    break
        
            typesSet = {} # used to store all types.
            allTypes = []
            for i in range(0, len(datas)):    
                if len(metadata_set) != 0 and datas[i].split(" = ")[0] in metadata_set:
                    oneField = []
                    # console.print(datas[i])
                    p2 = re.compile(r"[\"](.*?)[\"]", re.S)
                    if re.findall(p2, datas[i]):
                        field_name = re.findall(p2, datas[i])[0]
                    else:
                        field_name = "Not sure Name"
                    if "baseType: " in datas[i]:
                        field_type = datas[i].split("baseType: ")[1].split(",")[0]
                    else:
                        field_type = datas[i].split("type: ")[1].split(",")[0]
                    oneField.append(field_name)
                    oneField.append(field_type)
                    allTypes.append(field_type)
                    fields[field_name] = field_type
                    # fields.append(oneField)
                    metadata_set.remove(datas[i].split(" = ")[0])
            # print(f"allTypes is {allTypes}")

            for i in range(0, len(datas)):
                numb = datas[i].split(" = ")[0]
                temp_name = []
                if numb in allTypes:
                    if "DW_TAG_typedef" in datas[i]:
                        temp_data = ""
                        if "baseType" in datas[i]:
                            temp_0 = datas[i].split("baseType: ")[1].split(",")[0].split(")")[0]
                            for m in range(0, len(datas)):
                                if datas[m].split(" = ")[0] == temp_0 and "DIBasicType" in datas[m]:
                                    temp_data = datas[m]
                                    break
                        if "DIBasicType" in temp_data:
                                p3 = re.compile(r"[\"](.*?)[\"]", re.S)
                                temp_name = re.findall(p3, temp_data)
                        else:
                            p3 = re.compile(r"[\"](.*?)[\"]", re.S)
                            temp_name = re.findall(p3, datas[i])
                    elif "baseType" not in datas[i]:
                        p3 = re.compile(r"[\"](.*?)[\"]", re.S)
                        temp_name = re.findall(p3, datas[i])
                    temp_ind = i
                    while not temp_name:
                        # print(datas[temp_ind])
                        if "baseType" in datas[temp_ind]:
                            temp = datas[temp_ind].split("baseType: ")[1].split(",")[0].split(")")[0]
                        elif "types" in datas[temp_ind]:
                            temp = datas[temp_ind].split("types: ")[1].split(")")[0]
                        elif len(datas[temp_ind].split("!{")) == 2 and len(datas[temp_ind].split("!{")[1].split("}")[0].split(",")) == 1:
                            temp = datas[temp_ind].split("!{")[1].split("}")[0].split(",")[0]
                        else:
                            temp = "Not Sure!"
                            temp_name.append("Not Sure!")
                        if temp == "null":
                            temp_name.append("null")
                        for j in range(0, len(datas)):
                            if datas[j].split(" = ")[0] == temp:
                                p4 = re.compile(r"[\"](.*?)[\"]", re.S)
                                temp_name = re.findall(p4, datas[j])
                                temp_ind = j
                                break
                    typeName = temp_name[0]
                    typesSet[numb] = typeName
                    allTypes.remove(numb)

            ''' This part of code is used to add llvm-based types for each field. The princple is the elements in fields dic have the same
            order as the order of types in fields_types2 '''
            m = 0
            # console.print(typesSet)
            # console.print(fields_types2)
            for key,value in fields.items():
                try:
                    fields[key] = [typesSet[value], fields_types2[m]]
                    m += 1
                except:
                    continue
            AllstructsAndfields[struct_name] = fields
        
        # console.print("[+] founded_structs is: {}".format(founded_structs))
        results = json.dumps(AllstructsAndfields, sort_keys=False, indent=4, separators=(',', ': '))
        with open(self.outfile, 'w') as f:
            f.writelines(results)
       

    def furtherSearch(self, flag):

        '''
        This function is used to do a further search for the outfile, to find more structs that appear in the field types
        but don't have a individual item to show detailed fields information.
        '''

        inf = open(self.outfile)
        all_data = eval(inf.read())
        current_structs = list(all_data.keys()) # used to store current structs that already have detailed info.
        new_structs = [] # used to store new structs that are found in the fields.
        for struct in current_structs:
            fields = all_data[struct]
            for key,value in fields.items():
                a = fields[key]
                s = ""
                if a[1].startswith("%struct"):
                    if " = " in a[1]:
                        s = a[1].split(" = ")[0].split(".")[1]
                    else:
                        s = a[1].split(".")[1].split("*")[0]
                    if s not in current_structs and s not in new_structs:
                        new_structs.append(s)
        # print(f"[Debug] new_structs is: {new_structs}")
        '''Do a check, if there is no new struct, stop further searching.'''
        if len(new_structs) > 0:
            for item in new_structs:
                current_structs.append(item)
            # print(f"[Debug] current_structs is: {current_structs}")
            return current_structs, flag
        else:
            flag = False
            return current_structs, flag

    def parse_results(self):

        '''
        This function is used to clear some info in the final outfile, make it more readmore.
        '''

        inf = open(self.outfile)
        all_data = eval(inf.read())
        current_structs = list(all_data.keys())
        for struct in current_structs:
            fields = all_data[struct]
            for key,value in fields.items():
                a = fields[key]
                if a[1].startswith("%struct"):
                    if " = " in a[1]:
                        a[1] = a[1].split(" = ")[0]
        results = json.dumps(all_data, sort_keys=False, indent=4, separators=(',', ': '))
        with open(self.outfile, 'w') as f:
            f.writelines(results)

    
    
        
