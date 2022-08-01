#!/usr/bin/env python3

import sys
import os
import argparse
from rich.console import Console
console = Console()
wdir = os.getcwd()
sys.path.append(wdir + "/utils")

class ChangeGlobalVariable:
    
    def __init__(self, fname, outfile, var_name, new_value):
        self.fname = fname
        self.outfile = outfile
        self.var_name = var_name
        self.new_value = new_value
        return

    def changeGlobalVariable(self):

        ### This function is used to change the change global variable's value. The input file should be mutated IR file,
        # the output file is mutated IR file including new global variable's value. ###

        target_symbol = "@{}".format(self.var_name)

        datas = [] # it's used to record the original IR contents.
        contents = []
        contents2 = []
        line_numb = 0
        new_content = ''

        with open(self.fname, 'r') as f:
            datas = f.readlines()
        
        for i in range(0, len(datas)):
            if datas[i].startswith(target_symbol):
                line_numb = i
                contents = datas[i].split(",")
                contents2 = contents[0].split(" ")
        
        for i in range(0, len(contents2)-1):
            new_content += contents2[i] + " "
        new_content += str(self.new_value)
        new_content += "," + contents[1] + "\n"

        # print(new_content)
        # sys.exit()
        
        datas[line_numb] = new_content

        # Write the new IR.
        with open(self.outfile, 'w') as f:
            f.writelines(datas)

    
if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Class for changing global variable's value.")
    parser.add_argument("-bitcode", type=str, help="Bitcode file to modify")
    parser.add_argument("-variable", type=str, help="Name of global variable to target")
    parser.add_argument("-value", type=str, help="New value of global variable")
    args = parser.parse_args()

    if args.bitcode is None:
        console.print(f"[-] Please specify the bitcode file to modify.", style="bold red")
        parser.print_help()
        sys.exit(1)
    
    if args.variable is None:
        console.print(f"[-] Please specify the name of global variable to target.", style="bold red")
        parser.print_help()
        sys.exit(1)
    
    if args.value is None:
        console.print(f"[-] Please specify the new value of global variable.", style="bold red")
        parser.print_help()
        sys.exit(1)
    
    obj = ChangeGlobalVariable(args.bitcode, args.bitcode, args.variable, int(args.value))
    obj.changeGlobalVariable()

    # # test = ChangeGlobalVariable("./client(dynamical_nonce)/test_output.ll", "./client(dynamical_nonce)/test_output.ll", "line_buf_len", 1000)
    # test = ChangeGlobalVariable("./new_out/mosquitto_pub.ll", "./new_out/mosquitto_pub.ll", "line_buf_len", 1000)
    # # test = InsertFieldCall(args.bitcode, args.struct, args.function)
    # test.changeGlobalVariable()
