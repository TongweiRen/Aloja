#!/usr/bin/env python3

import sys
import os
from pathlib import Path
from rich.console import Console
console = Console()

def getStructsList(filename):

    '''
    This function is used to get structs list.
    ''' 

    file_stem = Path(filename).stem
    file_name = Path(filename).name

    ''' This part of code is used to get llvm-based type by using a pass to analyze the IR file. '''
    # command = "opt-10 -load ../llvmLibs/libStructList.so --legacy-struct-list --disable-output "+ filename +" > tempList.txt 2>&1"
    command = "opt-12 -load ../llvmLibs_12/libStructList.so --legacy-struct-list --disable-output "+ filename +" > tempList.txt 2>&1"
    os.system(command)
    types_contents = ''
    with open("tempList.txt", 'r') as f:
        types_contents = f.readline()[3:-1]
    types_contents_then = types_contents.split("[+]")
    types = {} # types will store all structs in the IR file and their elements' data types. The key is struct, value is data types.
    for item in types_contents_then:
        # console.print(item.split(":")[0])
        if "struct." in item.split(":")[0]:
            types[(item.split(":")[0].split("struct.")[1])] = item.split(":")[1][0:-1]
        # elif "union." in item.split(":")[0]:
        #     types[(item.split(":")[0].split("union.")[1])] = item.split(":")[1][0:-1]
    
    ''' This part of code is used to output all structs in the target IR file. '''
    allStructs = list(types.keys())
    # os.system("rm -f tempList.txt")
    return allStructs

    for i in range(len(allStructs)):
        if '.' in allStructs[i]:
            allStructs[i] = allStructs[i].split('.')[0]
    allStructs = list(set(allStructs))

    for i in range(0, len(allStructs)):
        allStructs[i] = f"[{i+1}] " + allStructs[i] + "\n"
    # allStructs.append(f"In total, {len(allStructs)} structs are found.")
    with open(f"structs_In_{file_stem}.txt", 'w') as f:
        f.writelines(allStructs)
    console.print(f"[bold green][+][/bold green] All structs in {file_name} are in [u]structs_In_{file_stem}.txt[/u]! :thumbs_up:")
