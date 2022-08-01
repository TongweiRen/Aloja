#!/usr/bin/env python3

import sys
import os
wdir = os.getcwd()
sys.path.append(wdir + "/utils")
import other_comm_funcs
from rich.console import Console
console = Console()

class InsertDecryptFunction:
    
    def __init__(self, fname, outfile):
        self.fname = fname
        self.outfile = outfile
        return

    def insertDecryptFunction(self):

        ### This function is used to insert the decryption function into the IR file. The input file should be original server IR file,
        # the output file is mutated server IR file including decryption function. ###

        decryption_function = [] # decryption_function contains the decryption function's instructions.
        # decryption.txt stores the decryption function's instructions, we only need to change it when we want to change decryption algorithm.
        # One thing should be clear is the decryption function should not call any structs, its input should be a purely number/string, it will do
        # some purely mathematical transformations and outputs plaintext.
        wdir = os.getcwd()
        with open(wdir + "/templates/int64/decryption_int64.txt", 'r') as f:
        # with open("../templates/decryption.txt", 'r') as f:
            decryption_function = f.readlines()
        decryption_function.append('\n')

        old_datas = [] # it's used to record the original IR contents.
        new_datas = [] # it's used to record the mutated IR contents.

        with open(self.fname, 'r') as f:
            old_datas = f.readlines()

        new_datas = other_comm_funcs.insert_function(old_datas, decryption_function)
            
        # Write the new IR.
        with open(self.outfile, 'w') as f:
            f.writelines(new_datas)

    
if __name__ == '__main__':

    test = InsertDecryptFunction("bitcode/mosquitto/mosquitto_mutated.ll", "bitcode/mosquitto/mosquitto_mutated.ll")
    test.insertDecryptFunction()
