#!/usr/bin/env python3

import sys
import os
wdir = os.getcwd()
sys.path.append(wdir + "/utils")
import update_number
import other_comm_funcs
from rich.console import Console
console = Console()

'''
This file is used to insert encryption mutation into the constructor function. It will automatically find the last place(s) in this
function where the target field is written, then inject encyption function call. Besides, this is i16-based mutation.
'''


class InsertEncFunctionCall:
    
    def __init__(self, fname, outfile, struct_name, fieldname, field_index, funcname):
        self.fname = fname
        self.outfile = outfile
        self.funcname = funcname
        self.fieldname = fieldname
        self.struct_name = struct_name
        self.field_index = field_index
        return

    def insertFunctionCall(self):
        
        with open(self.fname, 'r') as f:
            datas = f.readlines()
        
        target_function_start = 0 # target_function_start is the start line number of function in IR.
        target_function_end = 0 # target_function_end is the end line number of function in IR.
        target_function_contents = [] # target_function_contents is used to record the whole function.
        
        added_instruction_number = 0 # added_instruction_number is the %number we should start to add.
        changes_start_indx = 0 # changes_start_indx is the index we should update numbers in target_function_contents.
        added_instructions = [] # added_instructions record all new instrucions we will add.
        new_datas = [] # new_datas contains all data writed into the new IR.
        

        # with open(self.fname, 'r') as f:
        #     datas = f.readlines()

        # To find the target function
        target_function_contents, target_function_start, target_function_end = other_comm_funcs.find_function(datas, self.funcname)

        # To get added_instruction_number, changes_start_indx. The location we find is the last place used to store the value to this target field
        # in the target function. We will insert instructions before this final storing to make sure our changes will be the last changes made on this field.
        # target_instuction_symbol_* are two symbols we used to locate the final location. This loop will keep finding candidate locations
        # and updating the added_instruction_number and changes_start_indx, until it finds the last candidate, which is the final location we want.
        target_instuction_symbol_1 = f"getelementptr inbounds %struct.{self.struct_name}, %struct.{self.struct_name}*"
        # target_instuction_symbol_2 = f", i32 0, i32 {self.field_index},"
        # target_instuction_symbol_3 = f", i64 0, i32 {self.field_index},"
        target_instuction_symbol_2 = f", i32 0, i32 {self.field_index}"
        target_instuction_symbol_3 = f", i64 0, i32 {self.field_index}"
        for i in range(0, len(target_function_contents)):
            if target_instuction_symbol_1 in target_function_contents[i] and target_instuction_symbol_2 in target_function_contents[i]:
                if target_function_contents[i+1].startswith("  store"):
                    a = target_function_contents[i+1].split(", ")[1]
                    b = target_function_contents[i].split(" = ")[0].split("  ")[1]
                    if b in a:
                        added_instruction_number = int(target_function_contents[i].split(" = ")[0].split("%")[1]) + 1
                        changes_start_indx = i + 2
            elif target_instuction_symbol_1 in target_function_contents[i] and target_instuction_symbol_3 in target_function_contents[i]:
                if target_function_contents[i+1].startswith("  store"):
                    a = target_function_contents[i+1].split(", ")[1]
                    b = target_function_contents[i].split(" = ")[0].split("  ")[1]
                    if b in a:
                        added_instruction_number = int(target_function_contents[i].split(" = ")[0].split("%")[1]) + 1
                        changes_start_indx = i + 2
        if added_instruction_number == 0:
            for i in range(0, len(target_function_contents)):
                if target_instuction_symbol_1 in target_function_contents[i] and (target_instuction_symbol_2 in target_function_contents[i] or target_instuction_symbol_3 in target_function_contents[i]):
                    number = target_function_contents[i].split(" = ")[0].split("%")[1]
                    # console.print("number:", number)
                    for j in range(i, len(target_function_contents)):
                        if 'store' in target_function_contents[j]:
                            if f'i16* %{number}' in target_function_contents[j].split(", ")[1]:
                                # console.print("target_function_contents[j]:", target_function_contents[j])
                                for k in range(j, len(target_function_contents)):
                                    if target_function_contents[k].startswith("  %"):
                                        added_instruction_number = int(target_function_contents[k].split(" = ")[0].split("%")[1])
                                        changes_start_indx = k
                                        break

        temp_GEPs = []
        for i in range(0, len(target_function_contents)):
            if target_instuction_symbol_1 in target_function_contents[len(target_function_contents)-i-2] and target_instuction_symbol_2 in target_function_contents[len(target_function_contents)-i-2] and target_function_contents[len(target_function_contents)-i-1].startswith("  store"):
                temp_GEPs.append(target_function_contents[len(target_function_contents)-i-2].split(", !dbg")[0]+"\n")
                for n in range(i+2, len(target_function_contents)):
                    if " = getelementptr inbounds %struct." in target_function_contents[len(target_function_contents)-n-1]:
                        temp_GEPs.append(target_function_contents[len(target_function_contents)-n-1].split(", !dbg")[0]+"\n")
                    elif " = load %struct." in target_function_contents[len(target_function_contents)-n-1]:
                        temp_GEPs.append(target_function_contents[len(target_function_contents)-n-1].split(", !dbg")[0]+"\n")
                        break
                    else:
                        break
                break
            elif target_instuction_symbol_1 in target_function_contents[len(target_function_contents)-i-2] and target_instuction_symbol_3 in target_function_contents[len(target_function_contents)-i-2] and target_function_contents[len(target_function_contents)-i-1].startswith("  store"):
                temp_GEPs.append(target_function_contents[len(target_function_contents)-i-2].split(", !dbg")[0]+"\n")
                for n in range(i+2, len(target_function_contents)):
                    if " = getelementptr inbounds %struct." in target_function_contents[len(target_function_contents)-n-1]:
                        temp_GEPs.append(target_function_contents[len(target_function_contents)-n-1].split(", !dbg")[0]+"\n")
                    elif " = load %struct." in target_function_contents[len(target_function_contents)-n-1]:
                        temp_GEPs.append(target_function_contents[len(target_function_contents)-n-1].split(", !dbg")[0]+"\n")
                        break
                    else:
                        break
                break
        if len(temp_GEPs) == 0:
            for i in range(0, len(target_function_contents)):
                if target_instuction_symbol_1 in target_function_contents[i] and (target_instuction_symbol_2 in target_function_contents[i] or target_instuction_symbol_3 in target_function_contents[i]):
                    temp_GEPs.append(target_function_contents[i].split(", !dbg")[0])
                    if not temp_GEPs[0].endswith("\n"):
                        temp_GEPs[0] += "\n"
                    break
        GEPs = []
        for i in range(0, len(temp_GEPs)):
            GEPs.append(temp_GEPs[len(temp_GEPs)-i-1])

        # These are example instructions:
        # %230 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !621
        # %231 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %230, i32 0, i32 3, !dbg !622
        # %232 = load i32, i32* %231, align 4, !dbg !622
        # %233 = call i32 @change_static_value(i32 %232), !dbg !623
        # %234 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !624
        # %235 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %234, i32 0, i32 3, !dbg !625
        
        # To build all inserted instructions.
        low_bound = int(GEPs[0].split(" = ")[0].split("%")[1])
        # GEPs = update_number.update_other_instructions(GEPs, 0, len(GEPs), added_instruction_number-2)
        GEPs = update_number.update_other_instructions(GEPs, 0, added_instruction_number-low_bound, low_bound)
        
        for item in GEPs:
            added_instructions.append(item)
        current_numb = added_instruction_number + len(added_instructions)
        # print("current_numb: " + str(current_numb))
        instruction_0 = "  %{} = load i16, i16* %{}, align 2\n".format(current_numb, current_numb-1)
        instruction_1 = "  %{} = call i16 @simple_encrypt(i16 %{})\n".format(current_numb+1, current_numb)
        added_instructions.append(instruction_0)
        added_instructions.append(instruction_1)
        GEPs = update_number.update_other_instructions(GEPs, 0, len(GEPs)+2, current_numb-2)
        for item in GEPs:
            added_instructions.append(item)
        current_numb2 = added_instruction_number + len(added_instructions)
        instruction_0 = "  store i16 %{}, i16* %{}, align 2\n".format(current_numb+1, current_numb2-1)
        added_instructions.append(instruction_0)
        # with open("./test.ll", 'w') as f2:
        #     f2.writelines(added_instructions)
        # sys.exit()
        # print("Added instructions are: {}".format(added_instructions))
        increase_number = len(added_instructions) - 1 # increase_number is the number all remained numbers should plus.    
        
        # Update each remained numbers, including %numbers and block numbers.
        target_function_contents = update_number.update_other_instructions(target_function_contents, changes_start_indx, increase_number, added_instruction_number - 1)
        # print("Lower bounder is {}".format(added_instruction_number - 1))
        
        # Build the whole new IR.
        new_datas = other_comm_funcs.build_new_datas(datas, added_instructions, target_function_contents, changes_start_indx, target_function_start, target_function_end)
            
        # Write the new IR.
        # with open("/home/tren/Documents/aloja/tests/temp_tests/mosquitto_wrapper/mosquitto_pub.ll", 'w') as f2:
        # with open("./chanStaVal_test_output.ll", 'w') as f2:
        with open(self.outfile, 'w') as f2:
            f2.writelines(new_datas)

    
if __name__ == '__main__':

    test = InsertEncFunctionCall("bitcode/mosquitto/mosquitto_sub_mutated.ll", "bitcode/mosquitto/mosquitto_sub_mutated.ll", 'mosquitto__packet', "remaining_length", 3, "send__connect")
    test.insertFunctionCall()
