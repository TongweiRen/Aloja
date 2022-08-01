#!/usr/bin/env python3

import sys
import os
import argparse
from rich.console import Console
console = Console()
wdir = os.getcwd()
sys.path.append(wdir + "/utils")

class ChangeMutationFlag:
    
    def __init__(self, fname, outfile, new_flag):
        self.fname = fname
        self.outfile = outfile
        self.new_flag = new_flag
        return

    def changeMutationFlag(self):

        ### This function is used to change the mutation flag. The input file should be mutated IR file,
        # the output file is mutated IR file including new mutation flag. ###

        target_symbol = "getelementptr inbounds %struct.Aloja_container, %struct.Aloja_container*"
        target_symbol2 = "i32 0, i32 2"
        target_symbol3 = "  store i32"

        datas = [] # it's used to record the original IR contents.

        with open(self.fname, 'r') as f:
            datas = f.readlines()
        
        for i in range(0, len(datas)):
            if target_symbol in datas[i] and target_symbol2 in datas[i]:
                if datas[i+1].startswith(target_symbol3):
                    percent_numb = datas[i+1].split("%")[1].split(",")[0]
                    datas[i+1] = "  store i32 {}, i32* %{}, align 4\n".format(self.new_flag, percent_numb)
            
        # Write the new IR.
        with open(self.outfile, 'w') as f:
            f.writelines(datas)

    
if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Class for change mutation flag.")
    parser.add_argument("-bitcode", type=str, help="Bitcode file to modify")
    parser.add_argument("-value", type=str, help="New flag value to be set")
    args = parser.parse_args()

    if args.bitcode is None:
        console.print("[-] Please specify the bitcode file to modify.", style="bold red")
        parser.print_help()
        sys.exit(1)
    
    if args.value is None:
        console.print("[-] Please specify the new flag value to be set.", style="bold red")
        parser.print_help()
        sys.exit(1)
    
    obj = ChangeMutationFlag(args.bitcode, args.bitcode, int(args.value))
    obj.changeMutationFlag()

    # test = ChangeMutationFlag("./client(dynamical_nonce)/test_output.ll", "./client(dynamical_nonce)/test_output.ll", 20)
    # test.changeMutationFlag()
