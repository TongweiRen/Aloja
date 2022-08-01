#!/usr/bin/env python3

import sys
import os
import time
import json
from rich.console import Console
console = Console()
import get_necessary_info_for_injection

def run_mutant_with_mutant():

    command = 'bash test_mqttc_1.sh'
    key_word = 'Received'

    os.system(command)
    time.sleep(3)

    with open('screenlog.1', 'r') as f:
        for line in f:
            if key_word in line:
                os.system('rm screenlog.*')
                return True
    os.system('rm screenlog.*')
    return False

def run_mutant_with_original():
    
    command = 'bash test_mqttc_2.sh'
    key_word = 'Received'

    os.system(command)
    time.sleep(3)
    
    with open('screenlog.1', 'r') as f:
        for line in f:
            if key_word in line:
                os.system('rm screenlog.*')
                return False
    os.system('rm screenlog.*')
    return True

def main(server_IR, client_IR):

    all_commands = get_necessary_info_for_injection.main(server_IR, client_IR, 'temp_outputs/callgraph_contents.json')
    correct_commands = {}
    number_of_useful_mutants = 0
    number_of_mutants = 0
    # console.print(all_commands)
    # sys.exit(0)
    for field in all_commands:
        correct_commands[field] = []
        commands = all_commands[field]
        for command in commands:
            console.print(command)
            os.system(command)
            # console.print('\n')
            if os.path.exists('mutants/simple_subscriber_mutated.ll') and os.path.exists('mutants/simple_publisher_mutated.ll'):
                number_of_mutants += 1
                Flag = run_mutant_with_mutant()
                if Flag:
                    Flag = run_mutant_with_original()
                    if Flag:
                        console.print("[+] Mutant found")
                        correct_commands[field].append(command)
                        number_of_useful_mutants += 1
                        os.system(f'mv mutants/simple_subscriber_mutated.ll outputs/{field}_{number_of_mutants}_simple_subscriber_mutated.ll')
                        os.system(f'mv mutants/simple_publisher_mutated.ll outputs/{field}_{number_of_mutants}_simple_publisher_mutated.ll')
                    else:
                        os.system('rm mutants/simple_subscriber_mutated.ll')
                        os.system('rm mutants/simple_publisher_mutated.ll')
                        console.print(f"[-] Kill Mutant for {field}_{commands.index(command)} command")
                else:
                    os.system('rm mutants/simple_subscriber_mutated.ll')
                    os.system('rm mutants/simple_publisher_mutated.ll')
                    console.print(f"[-] Kill Mutant for {field}_{commands.index(command)} command")
    console.print(f"Number of mutants: {number_of_mutants}")
    console.print(f"Number of useful mutants: {number_of_useful_mutants}")
    results = json.dumps(correct_commands, sort_keys=False, indent=4, separators=(',', ': '))
    with open('outputs/correct_commands.json', 'w') as f:
        f.writelines(results)

if __name__ == '__main__':
    start = time.time()
    main()
    end = time.time()
    console.print(f"[bold green][+][/bold green] Total running time is {end-start}")