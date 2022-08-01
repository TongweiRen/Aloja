#!/usr/bin/env python3

import sys
import os
wdir = os.getcwd()
sys.path.append(wdir + "/utils")
import other_comm_funcs
from rich.console import Console
console = Console()

'''
This file is used to insert encryption function and other contents, including Aloja_container struct and related variables,
into the target IR file. Besides, this is for i16-based mutation.
'''

class InsertEncryptFunction:
    
    def __init__(self, fname, outfile):
        self.fname = fname
        self.outfile = outfile
        return

    def insertWrapperStruct(self):

        wrapper_struct = "%struct.Aloja_container = type { i8*, i16, i32 }\n"
        # print("The inserted wrapper struct is: {}".format(wrapper_struct))

        target_symbol = "%struct." # used to locate the posistion for inserting strcut definition.

        old_datas = []
        new_datas = []
        insert_position = 0
        struct_flag = True

        with open(self.fname, 'r') as f:
            old_datas = f.readlines()

            # To find whether there is struct.Aloja
            Aloja_flag = True
            for i in range(0, len(old_datas)):
                if old_datas[i].startswith(wrapper_struct): # If there is Aloja_container struct, do not insert.
                    Aloja_flag = False
                    break

            # To find the position to insert function
            for n in range(0, len(old_datas)):
                if old_datas[n].startswith(target_symbol) and struct_flag:
                    insert_position = n
                    struct_flag = False
                    break
            
            for n in range(0, insert_position):
                new_datas.append(old_datas[n])
            
            if Aloja_flag:
                new_datas.append(wrapper_struct)
            
            for n in range(insert_position, len(old_datas)):
                new_datas.append(old_datas[n])
            
        # # Write the new IR.
        # with open("wrapper_struct_output.ll", 'w') as f:
        #     f.writelines(new_datas)
        
        return new_datas

    def insertEncryptFunction(self, old_datas):

        ### This function is used to insert the encryption function into the IR file. The input file should be original client IR file,
        # the output file is mutated client IR file including encryption function. ###

        encryption_function = [] # encryption_function contains the encryption function's instructions.
        # encryption.txt stores the encryption function's instructions, we only need to change it when we want to change encryption algorithm.
        # One thing should be clear is the encryption function should not call any structs, its input should be a purely number/string, it will do
        # some purely mathematical transformations and outputs plaintext.
        wdir = os.getcwd()
        with open(wdir + "/templates/int16/encryption_int16.txt", 'r') as f:
            encryption_function = f.readlines()
        encryption_function.append('\n')

        new_datas = [] # it's used to record the mutated IR contents.

        new_datas = other_comm_funcs.insert_function(old_datas, encryption_function)
            
        # Write the new IR.
        with open(self.outfile, 'w') as f:
            f.writelines(new_datas)

    
if __name__ == '__main__':

    test = InsertEncryptFunction("bitcode/mosquitto/mosquitto_sub.ll", "bitcode/mosquitto/mosquitto_sub_mutated.ll")
    temp_datas = test.insertWrapperStruct()
    test.insertEncryptFunction(temp_datas)
