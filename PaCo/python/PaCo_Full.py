import sys
import json
import os
from pathlib import Path
from get_structs_list import getStructsList
import filter_structs_full
import filter_structs_mqttc_full
import PaCo_pipelineFuncs
from rich.console import Console
console = Console()
from get_funcs_for_struct import getFuncsForStruct
from copy import deepcopy

def PaCo(IR_file, output):

    '''Slice the program'''

    '''Find all structs in the target IR file.'''
    all_structs = []
    all_structs = getStructsList(IR_file)
    for i in range(len(all_structs)):
        all_structs[i] = all_structs[i].split(".")[0]
        all_structs[i] = all_structs[i].strip("*")
    all_structs = list(set(all_structs))
    console.print(f"[bold green][+][/bold green] Found all structs in {all_structs}! :thumbs_up:")

    

    '''Build a map for structs'''
    structToStructs_map = PaCo_pipelineFuncs.buildStrcutsMap(IR_file, all_structs)

    '''Filter FP structs'''
    if "simple_publisher" in IR_file or "simple_subscriber" in IR_file or "mqtt.sliced" in IR_file:
        all_structs = filter_structs_mqttc_full.controlStructFilter(all_structs, IR_file)
    else:
        all_structs = filter_structs_full.controlStructFilter(all_structs, IR_file)

    '''Find TP functions'''
    # console.print(IR_file)
    TP_functions = PaCo_pipelineFuncs.findFuncsFromMemcpy(IR_file)
    TP_functions_dupli = deepcopy(TP_functions) # This is used for other parts using.

    '''Find TP structs'''
    TP_structs = []
    if "simple_publisher" in IR_file  or "simple_subscriber" in IR_file or "mqtt.sliced" in IR_file:
        TP_structs = filter_structs_mqttc_full.controlTPFilters(IR_file, TP_functions_dupli)
    else:
        TP_structs = filter_structs_full.controlTPFilters(IR_file, TP_functions_dupli)
    
    '''Combine FP-removed structs and TP structs'''
    all_structs = PaCo_pipelineFuncs.combineFPAndTP(all_structs, TP_structs)
    # console.print(f"[bold green][+][/bold green] Found all structs in {all_structs}! :thumbs_up:")

    '''Update structs map after FP filtering and TP finding'''
    structToStructs_map = PaCo_pipelineFuncs.updateStructsMapAfterFPAndTP(structToStructs_map, all_structs)

    '''Find all functions for each struct'''
    # console.print(f"[bold green][+][/bold green] Found all structs in {all_structs}! :thumbs_up:")
    structToFunctions_map = PaCo_pipelineFuncs.buildStructToFunctionsMap(IR_file, all_structs)

    '''Build function-to-structs map'''
    functionToStructs_map = PaCo_pipelineFuncs.buildFunctionToStructsMap(structToFunctions_map)

    '''Get information about operations done by function on structs'''
    functionToStructs_map = PaCo_pipelineFuncs.getFunctionToStructsOperations(functionToStructs_map, IR_file)

    '''Combine all info we get from PaCo'''
    combined_map = {}
    combined_map["structToStructs_map"] = structToStructs_map
    combined_map["structToFunctions_map"] = structToFunctions_map
    combined_map["functionToStructs_map"] = functionToStructs_map
    # combined_map["TP_structs"] = TP_structs
    results = json.dumps(combined_map, sort_keys=False, indent=4, separators=(',', ': '))
    with open(output, 'w') as outfile:
        outfile.writelines(results)

    console.print("[bold green][+][/bold green] End of PaCo! :thumbs_up:")
