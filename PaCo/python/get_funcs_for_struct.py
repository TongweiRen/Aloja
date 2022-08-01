import os
import sys
import llvm_to_json
from fields_index_name_parser import FieldParser
from rich.console import Console
console = Console()
import json

def getFuncsForStruct(filename, struct):

    '''
    This function is used to get all functions for a struct, each function calls the struct.
    '''

    cmd_getAllfuncs = f"opt-10 -load ../llvmLibs/libMutateMod.so --legacy-mutate --disable-output {filename} > temp_getAllfuncs 2>&1"
    os.system(cmd_getAllfuncs)

    if 'HelloworldSubscriber' in filename:
        fParser = FieldParser('/home/aloja/ALOJA/bitcode/cyclonedds/HelloworldSubscriber.ll', struct)
    elif 'HelloworldPublisher' in filename:
        fParser = FieldParser('/home/aloja/ALOJA/bitcode/cyclonedds/HelloworldPublisher.ll', struct)
    else:
        fParser = FieldParser(filename, struct)
    fIndex = fParser.getFieldsIndexAndName()

    funcs = {}
    funcs = llvm_to_json.makeFullMap("temp_getAllfuncs", fIndex, struct)
    # console.print(f"[bold green][+][/bold green] Found all functions for {struct}! :thumbs_up:")
    console.print(f"[bold magenta][+][/bold magenta] Found all functions for {struct}!")

    os.system("rm -f temp_getAllfuncs")

    # results = json.dumps(funcs, sort_keys=False, indent=4, separators=(',', ': '))
    # with open('functions_server.json', 'w') as f:
    #     f.writelines(results)

    return funcs
