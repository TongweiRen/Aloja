#!/usr/bin/env python3

import sys
import os
import time
import json
from pathlib import Path
from rich.console import Console
console = Console()

wdir = os.getcwd()
sys.path.append(wdir + "/utils")
import get_necessary_info_for_injection

def run_mutant_with_mutant():

    server_command = 'lli-10 mutants/mosquitto_server_mutated.ll -v > server_output_1.txt 2>&1 &'
    client_command = 'lli-10 mutants/mosquitto_sub_mutated.ll -t \'hello/hello\' &'
    kill_command = 'killall lli-10'
    key_word = 'Sending SUBACK'

    os.system(server_command)
    time.sleep(1)
    os.system(client_command)
    time.sleep(1)
    os.system(kill_command)

    with open('server_output_1.txt', 'r') as f:
        for line in f:
            if key_word in line:
                return True

    return False

def run_mutant_with_original():
    
        server_command = 'lli-10 mutants/mosquitto_server_mutated.ll -v > server_output_2.txt 2>&1 &'
        client_command = 'lli-10 bitcode/mosquitto/mosquitto_sub.ll -t \'hello/hello\' &'
        kill_command = 'killall lli-10'
        key_word = 'Sending SUBACK'
    
        os.system(server_command)
        time.sleep(1)
        os.system(client_command)
        time.sleep(1)
        os.system(kill_command)
    
        with open('server_output_2.txt', 'r') as f:
            for line in f:
                if key_word in line:
                    return False
    
        return True

def main(server_IR, client_IR):

    all_commands = get_necessary_info_for_injection.main(server_IR, client_IR, 'temp_outputs/callgraph_contents.json')
    correct_commands = {}
    number_of_useful_mutants = 0
    number_of_mutants = 0
    # console.print(len(all_commands))
    for field in all_commands:
        correct_commands[field] = []
        commands = all_commands[field]
        for command in commands:
            console.print(command)
            os.system(command)
            if os.path.exists('mutants/mosquitto_server_mutated.ll'):
                number_of_mutants += 1
                Flag = run_mutant_with_mutant()
                if Flag:
                    Flag = run_mutant_with_original()
                    if Flag:
                        console.print("[bold green][+][/bold green] Mutant found")
                        correct_commands[field].append(command)
                        number_of_useful_mutants += 1
                        os.system(f'mv mutants/mosquitto_server_mutated.ll outputs/{field}_{number_of_mutants}_mosquitto_server_mutated.ll')
                        os.system(f'mv mutants/mosquitto_sub_mutated.ll outputs/{field}_{number_of_mutants}_mosquitto_sub_mutated.ll')
                        os.system(f'mv server_output_1.txt outputs/{field}_{number_of_mutants}_server_output_1.txt')
                        os.system('rm server_output_2.txt')
                    else:
                        os.system('rm server_output_1.txt')
                        os.system('rm server_output_2.txt')
                        os.system('rm mutants/mosquitto_server_mutated.ll')
                        os.system('rm mutants/mosquitto_sub_mutated.ll')
                        console.print(f"[-] Kill Mutant for {field}_{commands.index(command)} command")
                else:
                    os.system('rm server_output_1.txt')
                    os.system('rm mutants/mosquitto_server_mutated.ll')
                    os.system('rm mutants/mosquitto_sub_mutated.ll')
                    console.print(f"[-] Kill Mutant for {field}_{commands.index(command)} command")
    console.print(f"Number of mutants: {number_of_mutants}")
    console.print(f"Number of useful mutants: {number_of_useful_mutants}")

    results = json.dumps(correct_commands, sort_keys=False, indent=4, separators=(',', ': '))
    with open('outputs/correct_commands.json', 'w') as f:
        f.writelines(results)
    # os.system('rm temp_outputs/callgraph_contents.json')

if __name__ == '__main__':
    main('bitcode/mosquitto/mosquitto_server.ll', 'bitcode/mosquitto/mosquitto_sub.ll')
    # main(sys.argv[1], sys.argv[2])

