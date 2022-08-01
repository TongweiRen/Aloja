#!/usr/bin/env python3

import sys
import json
import os
import time
import filter_structs
import filter_structs_mqttc
import PaCo_pipelineFuncs
from rich.console import Console
console = Console()
from get_funcs_for_struct import getFuncsForStruct
from copy import deepcopy

def PaCo(server_IR, client_IR, output):

    '''Find TP functions'''
    # console.print(server_IR)
    TP_functions = PaCo_pipelineFuncs.findFuncsFromMemcpy(server_IR)
    TP_functions_dupli = deepcopy(TP_functions) # This is used for other parts using.

    '''Find TP structs'''
    TP_structs = []
    if "simple_publisher" in server_IR  or "simple_subscriber" in server_IR or "mqtt.sliced" in server_IR:
        TP_structs = filter_structs_mqttc.controlTPFilters(server_IR, TP_functions_dupli)
    else:
        TP_structs = filter_structs.controlTPFilters(server_IR, TP_functions_dupli)

    functions_for_one_struct_server = getFuncsForStruct(server_IR, TP_structs[0])
    functions_for_one_struct_client = getFuncsForStruct(client_IR, TP_structs[0])

    '''Combine all info we get from PaCo'''
    combined_map = {}
    combined_map["TP_structs"] = TP_structs
    combined_map["functions_for_one_struct_server"] = functions_for_one_struct_server
    combined_map["functions_for_one_struct_client"] = functions_for_one_struct_client

    results = json.dumps(combined_map, sort_keys=False, indent=4, separators=(',', ': '))
    with open(output, 'w') as outfile:
        outfile.writelines(results)

    console.print("[bold green][+][/bold green] End of PaCo! :thumbs_up:")


if __name__ == "__main__":
    start = time.time()
    PaCo("/home/aloja/ALOJA/bitcode/mosquitto/mosquitto_server.ll", "/home/aloja/ALOJA/bitcode/mosquitto/mosquitto_sub.ll", "/home/aloja/ALOJA/temp_outputs/mosquitto.json")
    # PaCo("/home/aloja/ALOJA/bitcode/mqttc/simple_subscriber.ll", "/home/aloja/ALOJA/bitcode/mqttc/simple_publisher.ll", "/home/aloja/ALOJA/temp_outputs/mqttc.json")
    # PaCo(sys.argv[1], sys.argv[2], "/home/aloja/ALOJA/temp_outputs/PaCo_output.json")
    end = time.time()
    console.print(f"[bold green][+][/bold green] PaCo took {end - start} seconds")