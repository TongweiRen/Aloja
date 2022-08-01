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

    server_command = 'lli-10 mutants/lwm2mserver_mutated.ll > server_output_1.txt 2>&1 &'
    client_command = 'lli-10 mutants/lightclient_mutated.ll &'
    kill_command = 'killall lli-10'
    key_word = 'registered'

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
    
        server_command = 'lli-10 mutants/lwm2mserver_mutated.ll > server_output_2.txt 2>&1 &'
        client_command = 'lli-10 bitcode/wakaama/lightclient.ll &'
        kill_command = 'killall lli-10'
        key_word = 'registered'
    
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

    all_commands = get_necessary_info_for_injection_Plus.main(server_IR, client_IR, 'temp_outputs/callgraph_contents.json')
    correct_commands = {}
    number_of_mutants = 0
    # console.print(len(all_commands))
    for struct in all_commands:
        correct_commands[struct] = {}
        for field in all_commands[struct]:
            correct_commands[struct][field] = []
            # console.print(all_commands[struct])
            commands = all_commands[struct][field]
            for command in commands:
                console.print(command)
                os.system(command)
                if os.path.exists('mutants/lwm2mserver_mutated.ll') and os.path.exists('mutants/lightclient_mutated.ll'):
                    number_of_mutants += 1
                    Flag = run_mutant_with_mutant()
                    if Flag:
                        Flag = run_mutant_with_original()
                        if Flag:
                            console.print("[+] Mutant found")
                            correct_commands[field].append(command)
                            os.system(f'mv mutants/lwm2mserver_mutated.ll outputs/{field}_{number_of_mutants}_lwm2mserver_mutated.ll')
                            os.system(f'mv mutants/lightclient_mutated.ll outputs/{field}_{number_of_mutants}_lightclient_mutated.ll')
                            os.system(f'mv server_output_1.txt outputs/{field}_{number_of_mutants}_server_output_1.txt')
                            os.system('rm server_output_2.txt')
                        else:
                            os.system('rm server_output_1.txt')
                            os.system('rm server_output_2.txt')
                            os.system('rm mutants/lwm2mserver_mutated.ll')
                            os.system('rm mutants/lightclient_mutated.ll')
                            console.print(f"[-] Kill Mutant for {field}_{commands.index(command)} command")
                    else:
                        os.system('rm server_output_1.txt')
                        os.system('rm mutants/lwm2mserver_mutated.ll')
                        os.system('rm mutants/lightclient_mutated.ll')
                        console.print(f"[-] Kill Mutant for {field}_{commands.index(command)} command")
    console.print(f"Number of mutants: {number_of_mutants}")
    console.print(f"Number of correct commands: {len(correct_commands)}")
    # os.system(f'rm temp_outputs/callgraph_contents.json')
    results = json.dumps(correct_commands, sort_keys=False, indent=4, separators=(',', ': '))
    with open('outputs/correct_commands.json', 'w') as f:
        f.writelines(results)

# if __name__ == '__main__':
#     main('bitcode/mosquitto_server.ll', 'bitcode/mosquitto_sub.ll')
#     # main(sys.argv[1], sys.argv[2])