#!/usr/bin/env python3

import sys
import argparse
import os
from rich.console import Console
console = Console()

if __name__ == "__main__":

    '''
    Example:
    ./mutation_injection.py -server bitcode/mosquitto_server.ll -client bitcode/mosquitto_sub.ll -struct mosquitto__packet -field remaining_length -index 3 -type int32 -PF handle__connect -CF send__connect -n
    '''

    parser = argparse.ArgumentParser(description="Aloja: creating mutations in mapped functions for a given LLVM project")
    parser.add_argument("-server", "--server", type=str, help="Input server bitcode")
    parser.add_argument("-client", "--client", type=str, help="Input client bitcode")
    parser.add_argument("-struct", "--struct", help="The struct including the target field")
    parser.add_argument("-field", "--field", help="The target struct field wanting to mutate")
    parser.add_argument("-index", "--index", help="The index of target struct field")
    parser.add_argument("-type", "--type", help="The target struct field wanting to mutate")
    parser.add_argument("-PF", "--ParserFunction", help="The parser function in the server side that the user wants to mutate")
    parser.add_argument("-CF", "--ConstructorFunction", help="The constructor function in the client side that the user wants to mutate")
    parser.add_argument("-n", "--nonce", help="Mutation to change field value", action="store_true")
    parser.add_argument("-e", "--encrypt", help="Mutation to encrypt a field", action="store_true")
    args = parser.parse_args()

    # Check for at least one input IR.
    if not args.server or not args.client:
        console.print(f"[-] Server or client bitcode missing", style="bold red")
        parser.print_help()
        sys.exit(1)
    
    if not args.field or not args.struct:
        console.print(f"[-] Field or corresponding struct missing", style="bold red")
        parser.print_help()
        sys.exit(1)
    
    if not args.index:
        console.print(f"[-] Field index missing", style="bold red")
        parser.print_help()
        sys.exit(1)

    if not args.type:
        console.print(f"[-] Field type missing", style="bold red")
        parser.print_help()
        sys.exit(1)
    
    if not args.ParserFunction or not args.ConstructorFunction:
        console.print(f"[-] Parser function or constructor function missing", style="bold red")
        parser.print_help()
        sys.exit(1)

    # Check for >= 1 mutation flag.
    if not args.nonce and not args.encrypt:
        console.print(f"[-] Need to provide at least one mutation (-n or -e)", style="bold red")
        sys.exit(1)
    
    mutation_scheme = ''
    if args.nonce:
        mutation_scheme = mutation_scheme + "-n "
    if args.encrypt:
        mutation_scheme = mutation_scheme + "-e "
    

    command = ''
    if args.type == "int32":
        command = f"python3 injection_controllers/aloja_int32.py -server {args.server} -client {args.client} -struct {args.struct} -field {args.field} -index {args.index} -PF {args.ParserFunction} -CF {args.ConstructorFunction} {mutation_scheme}"
    elif args.type == "int16":
        command = f"python3 injection_controllers/aloja_int16.py -server {args.server} -client {args.client} -struct {args.struct} -field {args.field} -index {args.index} -PF {args.ParserFunction} -CF {args.ConstructorFunction} {mutation_scheme}"
    elif args.type == "int64":
        command = f"python3 injection_controllers/aloja_int64.py -server {args.server} -client {args.client} -struct {args.struct} -field {args.field} -index {args.index} -PF {args.ParserFunction} -CF {args.ConstructorFunction} {mutation_scheme}"
    os.system(command)
    sys.exit(0)
