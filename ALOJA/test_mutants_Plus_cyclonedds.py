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
import get_necessary_info_for_injection_Plus

def run_mutant_with_mutant():

    server_command = 'lli-10 mutants/HelloworldSubscriber2_mutated.ll > server_output_1.txt 2>&1 &'
    client_command = 'lli-10 mutants/HelloworldPublisher2_mutated.ll &'
    kill_command = 'killall lli-10'
    key_word = 'Received'

    os.system(server_command)
    time.sleep(5)
    os.system(client_command)
    time.sleep(10)
    os.system(kill_command)

    with open('server_output_1.txt', 'r', errors='ignore') as f:
        lines = f.readlines()
        console.print(lines)
        for line in lines:
            if key_word in line:
                return True

    return False

def run_mutant_with_original():
    
        server_command = 'lli-10 mutants/HelloworldSubscriber2_mutated.ll > server_output_2.txt 2>&1 &'
        client_command = 'lli-10 bitcode/cyclonedds/HelloworldPublisher2.ll &'
        kill_command = 'killall lli-10'
        key_word = 'Received'
    
        os.system(server_command)
        time.sleep(5)
        os.system(client_command)
        time.sleep(10)
        os.system(kill_command)
    
        with open('server_output_2.txt', 'r', errors='ignore') as f:
            lines = f.readlines()
            console.print(lines)
            for line in lines:
                if key_word in line:
                    return False
    
        return True

def main(server_IR, client_IR):

    all_commands = get_necessary_info_for_injection_Plus.main(server_IR, client_IR, 'temp_outputs/callgraph_contents.json')
    # sys.exit(0)
    correct_commands = {}
    number_of_useful_mutants = 0
    number_of_mutants = 0
    reason_run_mutant_with_mutant = 0
    reason_run_mutant_with_original = 0
    # console.print(len(all_commands))
    for struct in all_commands:
        correct_commands[struct] = {}
        for field in all_commands[struct]:
            correct_commands[struct][field] = []
            commands = all_commands[struct][field]
            for command in commands:
                console.print(command)
                os.system(command)
                if os.path.exists('mutants/HelloworldSubscriber2_mutated.ll'):
                    number_of_mutants += 1
                    Flag = run_mutant_with_mutant()
                    if Flag:
                        Flag = run_mutant_with_original()
                        if Flag:
                            console.print("[bold green][+][/bold green] Mutant found")
                            correct_commands[struct][field].append(command)
                            number_of_useful_mutants += 1
                            os.system(f'mv mutants/HelloworldSubscriber2_mutated.ll outputs/{field}_{number_of_mutants}_HelloworldSubscriber2_mutated.ll')
                            os.system(f'mv mutants/HelloworldPublisher2_mutated.ll outputs/{field}_{number_of_mutants}_HelloworldPublisher2_mutated.ll')
                            os.system(f'mv server_output_1.txt outputs/{field}_{number_of_mutants}_server_output_1.txt')
                            os.system('rm server_output_2.txt')
                        else:
                            os.system('rm server_output_1.txt')
                            os.system('rm server_output_2.txt')
                            os.system('rm mutants/HelloworldSubscriber2_mutated.ll')
                            os.system('rm mutants/HelloworldPublisher2_mutated.ll')
                            console.print(f"[-] Kill Mutant for {field}_{commands.index(command)} command because of run_mutant_with_original")
                            reason_run_mutant_with_original += 1
                    else:
                        os.system('rm server_output_1.txt')
                        os.system('rm mutants/HelloworldSubscriber2_mutated.ll')
                        os.system('rm mutants/HelloworldPublisher2_mutated.ll')
                        console.print(f"[-] Kill Mutant for {field}_{commands.index(command)} command because of run_mutant_with_mutant")
                        reason_run_mutant_with_mutant += 1
    console.print(f"Number of mutants: {number_of_mutants}")
    console.print(f"Number of useful mutants: {number_of_useful_mutants}")
    console.print(f"Number of mutants that run_mutant_with_mutant: {reason_run_mutant_with_mutant}")
    console.print(f"Number of mutants that run_mutant_with_original: {reason_run_mutant_with_original}")

    results = json.dumps(correct_commands, sort_keys=False, indent=4, separators=(',', ': '))
    with open('outputs/correct_commands.json', 'w') as f:
        f.writelines(results)
    # os.system('rm temp_outputs/callgraph_contents.json')

if __name__ == '__main__':
    main('bitcode/mosquitto/mosquitto_server.ll', 'bitcode/mosquitto/mosquitto_sub.ll')
    # main(sys.argv[1], sys.argv[2])

