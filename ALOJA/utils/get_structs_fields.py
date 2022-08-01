#!/usr/bin/env python3

import sys
import os
import re
from pathlib import Path
from rich.console import Console
console = Console()

class GetStructsAndFields:
    
    # def __init__(self, fname, outfile):
    #     self.fname = fname
    #     self.outfile = outfile
    #     return
    
    def __init__(self, fname):
        self.fname = fname
        return

    def getMetadata(self, struct_name):
        # console.print(f"[Info] Start to get metadata for struct {struct_name}")
        if '.' in struct_name:
            struct_name = struct_name.split('.')[0]

        # console.print(f"[Info] Start to get metadata for {struct_name}")
        with open(self.fname, 'r') as f:
        # Get the fields' indices and names from the sliced bitcode.
            datas = f.readlines()
            
        target = "\\b" + struct_name + "\\b" # target is the struct we want to find.
        struct_symbol = "\\bDW_TAG_structure_type\\b" # struct_symbol is an additional symbol to help locate struct metadata.
        another_struct_symbol = "\\DW_TAG_typedef\\b" # another_struct_symbol is an additional symbol to help locate struct metadata.
        baseType = "\\bbaseType\\b" # baseType is an additional symbol to help locate struct metadata.
        elements = "\\belements\\b" # elemenets is a symbol to help locate the named metadata.
        named_metadata = [] # named_metadata[1] will be the named metadata.
        based_metadata = [] # based_metadata[1] will be the based metadata.
      
      # for data in datas:
        for i in range(len(datas)):
            # This part of code is to find the struct's metadata and get the named metadata which contains all fields of the struct.
            if datas[i].startswith("!") and re.search(target, datas[i]) and re.search(struct_symbol, datas[i]) and len(named_metadata) == 0:
                # console.print(f"[Debug] {datas[i]}")
                p = re.compile(r"[(](.*?)[)]", re.S)
                struct_tags = re.findall(p, datas[i])
                tags_items = struct_tags[0].split(", ")
                for tags_item in tags_items:
                    if re.search(elements, tags_item):
                        named_metadata = tags_item.split(": ")
                        break
                break
        
        if len(named_metadata) == 0:
            for i in range(len(datas)):
                # console.print(i)
                if datas[i].startswith("!") and re.search(target, datas[i]) and re.search(another_struct_symbol, datas[i]):
                    # console.print(datas[i])
                    p = re.compile(r"[(](.*?)[)]", re.S)
                    struct_tags = re.findall(p, datas[i])
                    tags_items = struct_tags[0].split(", ")
                    for tags_item in tags_items:
                        if re.search(baseType, tags_item):
                            based_metadata = tags_item.split(": ")
                            break
                if based_metadata != []:
                    break

            # console.print(f"[Info] {struct_name} is a typedef struct, based on {based_metadata}")
            for i in range(len(datas)):
                if datas[i].startswith(based_metadata[1]) and re.search(struct_symbol, datas[i]):
                    p = re.compile(r"[(](.*?)[)]", re.S)
                    struct_tags = re.findall(p, datas[i])
                    tags_items = struct_tags[0].split(", ")
                    for tags_item in tags_items:
                        if re.search(elements, tags_item):
                            named_metadata = tags_item.split(": ")
                            break
                    break

        return named_metadata
        
    def getNeededStructsAndFields(self, needed_structs):

        '''
        This function is used to get needed structs and fields.
        ''' 

        ''' This part of code is used to get llvm-based type by using a pass to analyze the IR file. '''
        pwd = Path.cwd()
        command = f"opt-10 -load {pwd}/utils/libStructList.so --legacy-struct-list --disable-output {self.fname} > temp_outputs/temp.txt 2>&1"
        os.system(command)
        types_contents = ''
        with open("temp_outputs/temp.txt", 'r') as f:
            types_contents = f.readline()[3:-1]
        types_contents_then = types_contents.split("[+]")
        # os.system("rm -f temp.txt")
        types = {} # types will store all structs in the IR file and their elements' data types. The key is struct, value is data types.
        for item in types_contents_then:
            # console.print(item)
            if ":" in item:
                types[(item.split(":")[0].split(".")[1])] = item.split(":")[1][0:-1]
        # console.print(types)
            
        # ''' This part of code is used to output all structs in the target IR file. '''
        # allStructs = list(types.keys())
        # for i in range(0, len(allStructs)):
        #     allStructs[i] = allStructs[i] + "\n"
        # with open("all_Structs_List.txt", 'w') as f:
        #     f.writelines(allStructs)

        datas = [] # used to store instructions read from the IR file.
        if 'Helloworld' in self.fname:
            with open('bitcode/cyclonedds/HelloworldSubscriber.ll', 'r') as f:
                datas = f.readlines
        else:
            with open(self.fname, 'r') as f:
                datas = f.readlines()

        founded_structs = [] # used to store founded structs
        AllstructsAndfields = {} # used to store all output info
        AllstructsAndEles = []
        
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
                    # console.print(types)
                    fields_types = types[struct].split(";")
                    structAndEles.append(fields_types)
                    # print(f"[+] fields_types is {fields_types}")
                    
                    AllstructsAndEles.append(structAndEles)
                if len(founded_structs) == len(needed_structs):
                    break
       
        
        if len(founded_structs) != len(needed_structs):
            # console.print(f"[Error] Can't find all structs in the IR file.")
            struct = needed_structs[0]
            # console.print(f"[Error] The struct {struct} is not found in the IR file.")
            numb = self.getMetadata(struct)[1]
            # console.print(f"[+] {struct}'s elements number is {numb}")
            structAndEles = []
            structAndEles.append(struct)
            founded_structs.append(struct)
            structAndEles.append(numb)
            fields_types = [] # This is used to store field's llvm-based data types, like i32, i16.
            # console.print(types)
            fields_types = types[struct].split(";")
            structAndEles.append(fields_types)
            AllstructsAndEles.append(structAndEles)

    
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
                    p2 = re.compile(r"[\"](.*?)[\"]", re.S)
                    field_name = re.findall(p2, datas[i])[0]
                    field_type = datas[i].split("baseType: ")[1].split(",")[0]
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
            for key,value in fields.items():
                 fields[key] = [typesSet[value], fields_types2[m]]
                 m += 1
            AllstructsAndfields[struct_name] = fields
        
        # console.print("[+] founded_structs is: {}".format(founded_structs))
        # results = json.dumps(AllstructsAndfields, sort_keys=False, indent=4, separators=(',', ': '))
        # with open(self.outfile, 'w') as f:
        #     f.writelines(results)
        
        return AllstructsAndfields
       

    def furtherSearch(self, flag, AllstructsAndfields):

        '''
        This function is used to do a further search for the outfile, to find more structs that appear in the field types
        but don't have a individual item to show detailed fields information.
        '''

        # inf = open(self.outfile)
        # all_data = eval(inf.read())
        all_data = AllstructsAndfields
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

    def parse_results(self, AllstructsAndfields):

        '''
        This function is used to clear some info in the final outfile, make it more readmore.
        '''

        # inf = open(self.outfile)
        # all_data = eval(inf.read())
        all_data = AllstructsAndfields
        current_structs = list(all_data.keys())
        for struct in current_structs:
            fields = all_data[struct]
            for key,value in fields.items():
                a = fields[key]
                if a[1].startswith("%struct"):
                    if " = " in a[1]:
                        a[1] = a[1].split(" = ")[0]
        # results = json.dumps(all_data, sort_keys=False, indent=4, separators=(',', ': '))
        # with open(self.outfile, 'w') as f:
        #     f.writelines(results)
        
        return all_data

    
        
