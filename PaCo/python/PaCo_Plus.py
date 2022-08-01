#!/usr/bin/env python3

import sys
import json
import os
import time
from pathlib import Path
import filter_structs_Plus
import filter_structs_mqttc
import filter_structs_cyclonedds as filter_structs_cyclonedds
import PaCo_pipelineFuncs
from rich.console import Console
console = Console()
from get_funcs_for_struct import getFuncsForStruct
from copy import deepcopy

def PaCo(server_IR, client_IR, output):

    '''Find TP functions'''
    if "Helloworld" in server_IR or "Helloworld" in client_IR:
        TP_functions = PaCo_pipelineFuncs.findFuncsFromMemcpy('/home/aloja/ALOJA/bitcode/cyclonedds/HelloworldSubscriber.ll')
    else:
        TP_functions = PaCo_pipelineFuncs.findFuncsFromMemcpy(server_IR)
    TP_functions_dupli = deepcopy(TP_functions) # This is used for other parts using.

    '''Find TP structs'''
    TP_structs = []
    if "simple_publisher" in server_IR  or "simple_subscriber" in server_IR or "mqtt.sliced" in server_IR:
        TP_structs = filter_structs_mqttc.controlTPFilters(server_IR, TP_functions_dupli)
    elif "Helloworld" in server_IR or "Helloworld" in client_IR:
        TP_structs = filter_structs_cyclonedds.controlTPFilters('/home/aloja/ALOJA/bitcode/cyclonedds/HelloworldSubscriber.ll', TP_functions_dupli)
    else:
        TP_structs = filter_structs_Plus.controlTPFilters(server_IR, TP_functions_dupli)

    combined_map = {}
    combined_map["TP_structs"] = deepcopy(TP_structs)
    for item in TP_structs:
        try:
            functions_for_one_struct_server = getFuncsForStruct(server_IR, item)
            functions_for_one_struct_client = getFuncsForStruct(client_IR, item)
            combined_map[item] = {}
            combined_map[item]["functions_for_one_struct_server"] = functions_for_one_struct_server
            combined_map[item]["functions_for_one_struct_client"] = functions_for_one_struct_client
        except:
            console.print(f"Error in getting functions for struct: {item}", style="red")
            combined_map["TP_structs"].remove(item)
            pass
    
    results = json.dumps(combined_map, sort_keys=False, indent=4, separators=(',', ': '))
    with open(output, 'w') as outfile:
        outfile.writelines(results)

    console.print("[bold green][+][/bold green] End of PaCo! :thumbs_up:")


if __name__ == "__main__":
    start = time.time()
    # PaCo(sys.argv[1], sys.argv[2], f"/home/aloja/ALOJA/temp_outputs/PaCo_output.json")
    # PaCo("/home/tren/Aloja_project/Aloja_Phase_2/aloja/Final_version/ALOJA/bitcode/wakaama/lwm2mserver.ll", "/home/tren/Aloja_project/Aloja_Phase_2/aloja/Final_version/ALOJA/bitcode/wakaama/lightclient.ll", '/home/aloja/ALOJA/temp_outputs/PaCo_output.json')
    PaCo("/home/aloja/ALOJA/bitcode/cyclonedds/HelloworldSubscriber2.ll", "/home/aloja/ALOJA/bitcode/cyclonedds/HelloworldPublisher2.ll", '/home/aloja/ALOJA/temp_outputs/PaCo_output.json')
    end = time.time()
    console.print(f"[bold green][+][/bold green] PaCo took {end - start} seconds")