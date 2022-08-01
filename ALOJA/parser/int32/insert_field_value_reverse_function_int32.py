#!/usr/bin/env python3

import sys
import os
wdir = os.getcwd()
sys.path.append(wdir + "/utils")
import other_comm_funcs
from rich.console import Console
console = Console()

class InsertFieldValueReverseFunction:
    
    def __init__(self, fname, outfile):
        self.fname = fname
        self.outfile = outfile
        return

    def insertFieldValueReverseFunction(self):

        ### This function is used to insert the nonce_verify_function into the IR file. The input file should be original server IR file,
        # the output file is mutated server IR file including nonce_verify_function. ###

        nonce_verify_function = [] # nonce_verify_function contains the nonce_verify_function's instructions.
        wdir = os.getcwd()
        with open(wdir+ "/templates/int32/field_value_reverse_int32.txt", 'r') as f:
        # with open("../templates/field_value_reverse.txt", 'r') as f:
            nonce_verify_function = f.readlines()
        nonce_verify_function.append('\n')

        old_datas = [] # it's used to record the original IR contents.
        new_datas = [] # it's used to record the mutated IR contents.

        with open(self.fname, 'r') as f:
            old_datas = f.readlines()

        new_datas = other_comm_funcs.insert_function(old_datas, nonce_verify_function)
            
        # Write the new IR.
        with open(self.outfile, 'w') as f:
            f.writelines(new_datas)

    
if __name__ == '__main__':

    test = InsertFieldValueReverseFunction("bitcode/mosquitto/mosquitto_mutated.ll", "bitcode/mosquitto/mosquitto_mutated.ll")
    test.insertFieldValueReverseFunction()
