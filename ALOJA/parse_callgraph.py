#!/usr/bin/env python3

import sys
import os
import json
import re
import time
from copy import deepcopy
from pathlib import Path
from rich.console import Console
console = Console()
wdir = os.getcwd()
sys.path.append(wdir + "/utils")
from get_structs_fields import GetStructsAndFields

def get_callgraph(server_IR):

    command = f'opt-10 --dot-callgraph {server_IR}'
    os.system(command)

    with open("callgraph.dot", 'r') as f:
        data = f.readlines()
    
    os.system("rm callgraph.dot")

    return data

def filter_fields(all_data):

    fields = []
    for item in all_data:
        for item2 in all_data[item]:
            field_type = all_data[item][item2][1]
            if "i" in field_type and "*" not in field_type and "struct" not in field_type and 'i8' not in field_type and '[' not in field_type:
                # console.print(all_data[item][item2])
                field_size = int(all_data[item][item2][1].split("i")[1])
                if field_size in [16, 32, 64]:
                    fields.append(item2)
    return fields

def get_nodeToFunction(file_contents, lines):

    nodeToFunction = {}
    for i in range(lines):
        if "Node0x" in file_contents[i] and "shape=record" in file_contents[i]:
            p = re.compile(r"[\"](.*?)[\"]", re.S)
            nodeToFunction[file_contents[i][1:-1].split(" ")[0]] = re.findall(p, file_contents[i])[0][1:-1]

    return nodeToFunction

def get_nodes_relations(function_nodes, file_contents, lines):

    function_nodes_relations = {}
    for item in list(function_nodes.keys()):
        for i in range(lines):
            if item in file_contents[i] and " -> " in file_contents[i]:
                relation = file_contents[i][1:-2]
                # console.print(relation)
                temp = relation.split("[")[0].split(" -> ")
                # console.print(temp)
                if item == temp[1]:
                    if item not in function_nodes_relations:
                        function_nodes_relations[item] = [temp[0]]
                    elif temp[0] not in function_nodes_relations[item]:
                        function_nodes_relations[item].append(temp[0])
    # console.print(function_nodes_relations)
    return function_nodes_relations

def get_function_depend_ins(function_nodes_relations, nodeToFunction):

    function_depend_ins = {}
    for item in function_nodes_relations:
        function_depend_ins_temp = {}
        for node in function_nodes_relations[item]:
            function_depend_ins_temp[node] = nodeToFunction[node]
        function_depend_ins[item] = function_depend_ins_temp

    return function_depend_ins

def replaceNodeWithFunctionName(function_depend_ins, nodeToFunction):
    new_function_depend_ins = {}
    for item in function_depend_ins:
        function_name = nodeToFunction[item]
        new_function_depend_ins[function_name] = list(function_depend_ins[item].values())
    return new_function_depend_ins

def functionLevelCal(new_function_depend_ins, server_map, client_map):
    function_level = {}
    for item in new_function_depend_ins:
        if len(new_function_depend_ins[item]) == 1 and new_function_depend_ins[item][0] == 'external node':
            function_level[item] = 0
    TP_top_level_func = list(function_level.keys())
    # console.print(TP_top_level_func)
    for item in new_function_depend_ins:
        if len(new_function_depend_ins[item]) == 2 and new_function_depend_ins[item][1] not in TP_top_level_func:
            function_level[item] = 0
    TP_top_level_func = list(function_level.keys())
    # console.print(TP_top_level_func)
    
    map_1 = {}
    for item in server_map:
        map_1[item] = []
        for func in server_map[item]['parser']:
            if func in TP_top_level_func:
                map_1[item].append(func)
    # console.print(map_1)
    map_2 = {}
    for item in server_map:
        map_2[item] = []
        for func in server_map[item]['constructor']:
            if func in TP_top_level_func:
                map_2[item].append(func)
    # console.print(map_2)

    map_3 = {}
    for item in client_map:
        map_3[item] = []
        for func in client_map[item]['parser']:
            if func in TP_top_level_func:
                map_3[item].append(func)
    # console.print(map_3)
    map_4 = {}
    for item in client_map:
        map_4[item] = []
        for func in client_map[item]['constructor']:
            if func in TP_top_level_func:
                map_4[item].append(func)
    # console.print(map_4)
    
    
    return TP_top_level_func



def find_parser_candidates(functions, fields_list, IR_file):
    # temp = open(function_list, 'r')
    # functions = json.load(temp)
    # temp.close()
    map_1 = {}
    for item in functions:
        if functions[item]['field_name'] in fields_list:
            new_item = item.split(' !dbg ')[0]
            map_1[new_item] = functions[item]
    # console.print(map_1)

    with open(IR_file, 'r') as f:
        IR_contents = f.readlines()
    temp_map_1 = {}
    for item in map_1:
        for i in range(len(IR_contents)):
            if item in IR_contents[i]:
                map_1[item]['operation'] = IR_contents[i+1]
                temp_map_1[item] = map_1[item]
                # console.print(item)
                break
        if 'operation' not in map_1[item]:
            console.print(item)
    # console.print(map_1)
    map_1 = temp_map_1
    map_2 = {}
    for item in map_1:
        field_name = map_1[item]['field_name']
        if field_name not in map_2:
            map_2[field_name] = {}
        function_name = map_1[item]['parent_function']
        if function_name not in map_2[field_name]:
            map_2[field_name][function_name] = []
        if 'load' in map_1[item]['operation'] and 'parser' not in map_2[field_name][function_name]:
            map_2[field_name][function_name].append('parser')
        elif 'store' in map_1[item]['operation'] and 'constructor' not in map_2[field_name][function_name]:
            map_2[field_name][function_name].append('constructor')
    # console.print(map_2)
    map_3 = {}
    for item in map_2:
        map_3[item] = {'parser': [], 'constructor': []}
        for function_name in map_2[item]:
            if len(map_2[item][function_name]) == 1:
                if map_2[item][function_name][0] == 'parser':
                    map_3[item]['parser'].append(function_name)
                else:
                    map_3[item]['constructor'].append(function_name)
            else:
                map_3[item]['parser'].append(function_name)
                map_3[item]['constructor'].append(function_name)
    # console.print(map_3)
    map_4 = {}
    for item in map_3:
        if len(map_3[item]['parser']) == 0 or len(map_3[item]['constructor']) == 0:
            continue
        else:
            map_4[item] = map_3[item]
    
    # console.print(map_4)
    
    return map_4

def compare_server_client(server_map, client_map):
    list_1 = list(server_map.keys())
    list_2 = list(client_map.keys())
    for item in list_1:
        if item not in list_2:
            del server_map[item]
    for item in list_2:
        if item not in list_1:
            del client_map[item]
    # console.print(server_map)
    # console.print(client_map)
    return server_map, client_map

def parse_callgraph_2(file_contents):
    del file_contents[len(file_contents)-1]
    lines = len(file_contents)
    
    '''This part of code is to get node id and corresponding function.'''
    nodeToFunction = get_nodeToFunction(file_contents, lines)

    '''This part of code is to get node relations.'''
    function_nodes_relations = get_nodes_relations(nodeToFunction, file_contents, lines)

    '''This part of code is to get function depend on which node.'''
    function_depend_ins = get_function_depend_ins(function_nodes_relations, nodeToFunction)

    new_function_depend_ins = replaceNodeWithFunctionName(function_depend_ins, nodeToFunction)

    return new_function_depend_ins

def parse_callgraph(callgraph_data_server, callgraph_data_client, contents_file, server_map, client_map, struct):

    file_contents = callgraph_data_server
    file_contents_client = callgraph_data_client

    new_function_depend_ins = parse_callgraph_2(file_contents)
    new_function_depend_ins_client = parse_callgraph_2(file_contents_client)

    ''' First way to minimize function list, by removing the lower-level parser functions and higher-level constructor functions. '''
    server_map_duplicate = deepcopy(server_map)
    for field in server_map_duplicate:
        for parser in server_map_duplicate[field]['parser']:
            upper_functions = new_function_depend_ins[parser]
            for func in upper_functions:
                if func in server_map_duplicate[field]['parser']:
                    server_map[field]['parser'].remove(parser)
                    break
    client_map_duplicate = deepcopy(client_map)
    for field in client_map_duplicate:
        for constructor in client_map_duplicate[field]['constructor']:
            if constructor in new_function_depend_ins_client:
                upper_functions = new_function_depend_ins_client[constructor]
                # console.print(upper_functions)
                for func in upper_functions:
                    if func in client_map_duplicate[field]['constructor'] and func in client_map[field]['constructor']:
                        client_map[field]['constructor'].remove(func)
                        break

    all_contents = {struct: {}}
    all_contents[struct]['server_map'] = server_map
    all_contents[struct]['client_map'] = client_map
    # all_contents[struct]['new_function_depend_ins'] = new_function_depend_ins
    results = json.dumps(all_contents, sort_keys=False, indent=4, separators=(',', ': '))
    with open(contents_file, 'w') as f:
        f.writelines(results)


def main(server_IR, client_IR):

    callgraph_data_server = get_callgraph(server_IR)
    callgraph_data_client = get_callgraph(client_IR)
    PaCo_output = 'temp_outputs/PaCo_output.json'
    
    temp = open(PaCo_output, 'r')
    PaCo_data = json.load(temp)
    temp.close()
    # os.system(f'rm -f {PaCo_output}')

    struct = PaCo_data['TP_structs']
    # console.print(struct)
    functions_for_one_struct_server = PaCo_data['functions_for_one_struct_server']
    functions_for_one_struct_client = PaCo_data['functions_for_one_struct_client']

    test = GetStructsAndFields(server_IR)
    if '.' in struct[0]:
        struct_name = struct[0].split('.')[0]
    else:
        struct_name = struct[0]
    # console.print(struct_name)
    callgraph_needing = test.getNeededStructsAndFields([struct_name])
    struct_fields_infor = test.parse_results(callgraph_needing)
    # console.print(struct_fields_infor)
    condidate_fields = filter_fields(struct_fields_infor)
    # console.print(condidate_fields)
    server_map = find_parser_candidates(functions_for_one_struct_server, condidate_fields, server_IR)
    client_map = find_parser_candidates(functions_for_one_struct_client, condidate_fields, client_IR)
    server_map, client_map = compare_server_client(server_map, client_map)
    parse_callgraph(callgraph_data_server, callgraph_data_client, "temp_outputs/callgraph_contents.json", server_map, client_map, struct[0])