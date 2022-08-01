#!/usr/bin/env python3

import sys
import json
import os
from rich.console import Console
console = Console()

wdir = os.getcwd()
sys.path.append(wdir + "/utils")
from fields_index_name_parser import FieldParser


def combine_server_client_maps(data):
    # temp = open(input_file, 'r')
    # data = json.load(temp)
    # temp.close()
    
    server_map = data['server_map']
    client_map = data['client_map']

    combined_map = {}
    for field in server_map:
        combined_map[field] = {}
        combined_map[field]['parser'] = server_map[field]['parser']
        combined_map[field]['constructor'] = client_map[field]['constructor']
    
    return combined_map

def build_test_function_pairs(combined_map):
    test_function_pairs = {}
    for field in combined_map:
        test_function_pairs[field] = []
        parsers = combined_map[field]['parser']
        constructors = combined_map[field]['constructor']
        for parser in parsers:
            for constructor in constructors:
                # if parser != constructor:
                test_function_pairs[field].append([parser, constructor])
    
    # console.print(test_function_pairs)
    return test_function_pairs

def find_root_struct(target_function_contents, struct, indice):
    target_instuction_symbol_1 = f" = getelementptr inbounds %struct.{struct}, %struct.{struct}* %"
    target_instuction_symbol_3 = f" = getelementptr inbounds %struct.{struct}."
    # console.print(len(target_function_contents))
    target_instuction_symbol_2 = f", i32 0, i32 {indice},"
    temp_GEPs = []
    for i in range(0, len(target_function_contents)):
        if target_instuction_symbol_1 in target_function_contents[len(target_function_contents)-i-2] and target_instuction_symbol_2 in target_function_contents[len(target_function_contents)-i-2]:
            temp_GEPs.append(target_function_contents[len(target_function_contents)-i-2].split(", !dbg")[0]+"\n")
            for n in range(i+2, len(target_function_contents)):
                if " = getelementptr inbounds %struct." in target_function_contents[len(target_function_contents)-n-1]:
                    temp_GEPs.append(target_function_contents[len(target_function_contents)-n-1].split(", !dbg")[0]+"\n")
                elif " = load %struct." in target_function_contents[len(target_function_contents)-n-1] and target_function_contents[len(target_function_contents)-n-1].split(" = load %struct.")[0].split("  ")[1] in target_function_contents[len(target_function_contents)-n]:
                    # console.print(target_function_contents[len(target_function_contents)-n])
                    temp_GEPs.append(target_function_contents[len(target_function_contents)-n-1].split(", !dbg")[0]+"\n")
                else:
                    break
            break
    if len(temp_GEPs) == 0:
        for i in range(0, len(target_function_contents)):
            if target_instuction_symbol_3 in target_function_contents[len(target_function_contents)-i-2] and target_instuction_symbol_2 in target_function_contents[len(target_function_contents)-i-2]:
                temp_GEPs.append(target_function_contents[len(target_function_contents)-i-2].split(", !dbg")[0]+"\n")
                for n in range(i+2, len(target_function_contents)):
                    if " = getelementptr inbounds %struct." in target_function_contents[len(target_function_contents)-n-1]:
                        temp_GEPs.append(target_function_contents[len(target_function_contents)-n-1].split(", !dbg")[0]+"\n")
                    elif " = load %struct." in target_function_contents[len(target_function_contents)-n-1] and target_function_contents[len(target_function_contents)-n-1].split(" = load %struct.")[0].split("  ")[1] in target_function_contents[len(target_function_contents)-n]:
                        # console.print(target_function_contents[len(target_function_contents)-n])
                        temp_GEPs.append(target_function_contents[len(target_function_contents)-n-1].split(", !dbg")[0]+"\n")
                    else:
                        break
                break
    temp_GEPs.reverse()
    # console.print(temp_GEPs)
    if len(temp_GEPs) == 0:
        console.print(f"Error: Cannot find root struct. {target_function_contents[0]}")
        root_struct = ""
    elif "load %struct." in temp_GEPs[0]:
        root_struct = temp_GEPs[0].split(" = load %struct.")[1].split("*")[0]
    elif "getelementptr inbounds %struct." in temp_GEPs[0]:
        root_struct = temp_GEPs[0].split("getelementptr inbounds %struct.")[1].split(", ")[0]
        
    
    return root_struct

def get_necessary_info(test_function_pairs, struct, field_index_and_name_map):

    # console.print(test_function_pairs)

    for field in test_function_pairs:
        indice = field_index_and_name_map[field]
        for item2 in test_function_pairs[field]:
            item2.append(struct)
            item2.append(indice)

    # console.print(test_function_pairs)
    
    temp_test_function_inputs = {}
    for field in test_function_pairs:
        temp_test_function_inputs[field] = []
        for item2 in test_function_pairs[field]:
            if len(item2) == 4:
                temp_test_function_inputs[field].append(item2)
    
    test_function_pairs = temp_test_function_inputs
    
    return test_function_pairs

def get_field_type(server_IR, struct, field_index):

    field_type = ""
    with open(server_IR, 'r') as f:
        IR_contents = f.readlines()

    target_field_symbol_1 = f"getelementptr inbounds %struct.{struct}, %struct.{struct}*"
    target_field_symbol_2 = f", i32 0, i32 {field_index}, !dbg"
    target_field_symbol_3 = f", i64 0, i32 {field_index},"
    # console.print(struct)
    # console.print(field_index)
    for i in range(0, len(IR_contents)):
        if target_field_symbol_1 in IR_contents[i] and ', i32 0, i32 ' in IR_contents[i] and ', i64 0, i32 ' in IR_contents[i]:
            if target_field_symbol_3 in IR_contents[i]:
                if  "load" in IR_contents[i+1]:
                    # console.print(IR_contents[i])
                    field_type = IR_contents[i+1].split(',')[0].split('i')[1]
                break
        elif target_field_symbol_1 in IR_contents[i] and target_field_symbol_2 in IR_contents[i]:
            if  "load" in IR_contents[i+1]:
                # console.print(IR_contents[i])
                field_type = IR_contents[i+1].split(',')[0].split('i')[1]
                break
            elif "store" in IR_contents[i+1]:
                # console.print(IR_contents[i])
                field_type = IR_contents[i+1].split(',')[1].split('i')[1].split('*')[0]
                break
        elif target_field_symbol_1 in IR_contents[i] and target_field_symbol_3 in IR_contents[i]:
            if  "load" in IR_contents[i+1]:
                # console.print(IR_contents[i])
                field_type = IR_contents[i+1].split(',')[0].split('i')[1]
                break
            elif "store" in IR_contents[i+1]:
                # console.print(IR_contents[i])
                field_type = IR_contents[i+1].split(',')[1].split('i')[1].split('*')[0]
                break
    
    # console.print(f"field_type: {field_type}")

    return field_type

def generate_Aloja_commands(necessary_info, struct, server_IR, client_IR):

    struct_fields_info = {}
    for field in necessary_info:
        # console.print(f"{necessary_info}")
        if 'HelloworldSubscriber' in server_IR:
            field_type = get_field_type('bitcode/cyclonedds/HelloworldSubscriber.ll', struct, necessary_info[field][0][3])
        else:
            field_type = get_field_type(server_IR, struct, necessary_info[field][0][3])
        # console.print(f"{struct} {field}:{field_type}")
        struct_fields_info[field] = field_type
    
    commands = {}
    for field in necessary_info:
        commands[field] = []
        if struct_fields_info[field] == '':
            continue
        else:
            field_type = "int" + struct_fields_info[field]
        for item2 in necessary_info[field]:
            parser_function = item2[0]
            constructor_function = item2[1]
            field_index = item2[3]
            if struct == 'dds_entity':
                struct_new = 'dds_entity.4933'
            else:
                struct_new = struct
            command = f'./mutation_injection.py -server {server_IR} -client {client_IR} -struct {struct_new} -field {field} -index {field_index} -type {field_type} -PF {parser_function} -CF {constructor_function} -n'
            commands[field].append(command)
    # console.print(commands)
    return commands


def main(server_IR, client_IR, callgraph_contents_file):

    temp = open(callgraph_contents_file, 'r')
    temp_callgraph_contents = json.load(temp)
    temp.close()

    structs = list(temp_callgraph_contents.keys())
    # console.print(f'[+] struct {struct}')
    all_commands = {}
    for struct in structs:
        # console.print(f'[+] struct {struct}')
        callgraph_contents = temp_callgraph_contents[struct]
        # console.print(f'[+] callgraph_contents {callgraph_contents}')
        # sys.exit(0)
        if not callgraph_contents['server_map'] or not callgraph_contents['client_map'] or len(callgraph_contents['server_map']) == 0 or len(callgraph_contents['client_map']) == 0:
            continue
        
        try:
            if 'HelloworldSubscriber' in server_IR:
                fParser = FieldParser('bitcode/cyclonedds/HelloworldSubscriber.ll', struct)
            else:
                fParser = FieldParser(server_IR, struct)
            field_index_and_name_map = fParser.getFieldsIndexAndName()
            # console.print(f'[+] field_index_and_name_map {field_index_and_name_map}')
            field_index_and_name_map = dict(zip(field_index_and_name_map.values(), field_index_and_name_map.keys()))
            combined_map = combine_server_client_maps(callgraph_contents)
            # console.print(f'[+] combined_map {combined_map}')
            test_function_pairs = build_test_function_pairs(combined_map)
            necessary_info = get_necessary_info(test_function_pairs, struct, field_index_and_name_map)
            # console.print(f'[+] necessary_info {necessary_info}')
            commands = generate_Aloja_commands(necessary_info, struct, server_IR, client_IR)
            # console.print(f'[+] commands {commands}')
            all_commands[struct] = commands
        except Exception as e:
            # console.print(f"[-] {e}")
            continue

    results = json.dumps(all_commands, sort_keys=False, indent=4, separators=(',', ': '))
    with open('temp_outputs/commands.json', 'w') as f:
        f.writelines(results)

    return all_commands


    
