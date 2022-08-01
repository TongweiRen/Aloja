#!/usr/bin/env python3

import sys
import os
wdir = os.getcwd()
sys.path.append(wdir + "/utils")
import update_number
import other_comm_funcs
from rich.console import Console
console = Console()

class InsertDecFieldCall:
    
    def __init__(self, fname, outfile):
        self.fname = fname
        self.outfile = outfile
        return

    def insertFieldCall(self):

        target_function_start = 0 # target_function_start is the start line number of function in IR.
        target_function_end = 0 # target_function_end is the end line number of function in IR.
        target_function_contents = [] # target_function_contents is used to record the whole function.

        container_struct_number = 0
        added_instruction_number = 26 # added_instruction_number is the %number we should start to add.
        added_instruction_number2 = 0 # added_instruction_number2 is the %number we should start to add when we change back the value.
        changes_start_indx = 0 # changes_start_indx is the index we should update numbers in target_function_contents.
        added_instructions = [] # added_instructions record all new instrucions we will add.
        new_datas = [] # new_datas contains all data writed into the new IR.
        

        with open(self.fname, 'r') as f:
            datas = f.readlines()

            # To find the target function
            target_function_contents, target_function_start, target_function_end = other_comm_funcs.find_function(datas, "Aloja_Wrapper_Function")

            # To get target_struct_number, added_instruction_number, changes_start_indx
            # This part code is used to find the correct position to insert instructions. For the encryption_read, we can insert decryption
            # function call at the very beginning of target function, once the target function allocates memory to the root struct we need.
            container_struct_lable = "alloca %struct.Aloja_container"
            for i in range(0, len(target_function_contents)):
                if container_struct_lable in target_function_contents[i]:
                    # print(target_function_contents[i])
                    container_struct_number = int(target_function_contents[i].split("%")[1].split(" ")[0])
                    break
            for i in range(0, len(target_function_contents)):
                if target_function_contents[len(target_function_contents)-i-1].startswith("25"):
                    # print(target_function_contents[len(target_function_contents)-i-1])
                    # added_instruction_number = int(target_function_contents[len(target_function_contents)-i-1].split(" = ")[0].split("%")[1])
                    changes_start_indx = len(target_function_contents)-i
                    break
                
            # print("container_struct_number: " + str(container_struct_number))
            # print("added_instruction_number: " + str(added_instruction_number))
            # print("changes_start_indx: " + str(changes_start_indx))
            

            # These are example instructions:
            #   %35 = getelementptr inbounds %struct.Aloja_container, %struct.Aloja_container* %3, i32 0, i32 2, !dbg !1641
            #   %36 = load i32, i32* %35, align 4, !dbg !1641
            #   %37 = icmp sgt i32 %36, 0, !dbg !1643
            #   br i1 %37, label %38, label %41, !dbg !1644

            # 38:                                               ; preds = %34
            #   %39 = load i32, i32* %2, align 4, !dbg !1645
            #   %40 = call i32 @simple_decrypt(i32 %39), !dbg !1647
            #   store i32 %40, i32* %2, align 4, !dbg !1648
            #   br label %41, !dbg !1649
            
            # To build all inserted instructions.
            instruction_0 = "  %{} = getelementptr inbounds %struct.Aloja_container, %struct.Aloja_container* %{}, i32 0, i32 2\n".format(added_instruction_number, container_struct_number)
            instruction_1 = "  %{} = load i32, i32* %{}, align 4\n".format(added_instruction_number+1, added_instruction_number)
            instruction_2 = "  %{} = icmp sgt i32 %{}, 0\n".format(added_instruction_number+2, added_instruction_number+1)
            br_ins = "  br i1 %{}, label %{}, label %{}\n\n".format(added_instruction_number+2, added_instruction_number+3, added_instruction_number+6)
            added_instructions.append(instruction_0)
            added_instructions.append(instruction_1)
            added_instructions.append(instruction_2)
            added_instructions.append(br_ins)
            added_instruction_number2 = added_instruction_number + len(added_instructions)
            block_ins = "{}:\n".format(added_instruction_number2-1)
            instruction_0 = "  %{} = load i32, i32* %2, align 4\n".format(added_instruction_number2)
            instruction_1 = "  %{} = call i32 @simple_decrypt(i32 %{})\n".format(added_instruction_number2+1, added_instruction_number2)
            store_ins = "  store i32 %{}, i32* %2, align 4\n".format(added_instruction_number2+1)
            added_instructions.append(block_ins)
            added_instructions.append(instruction_0)
            added_instructions.append(instruction_1)
            added_instructions.append(store_ins)
            br_ins = "  br label %{}\n\n".format(added_instruction_number+6)
            added_instructions.append(br_ins)

            # with open("./test.ll", 'w') as f2:
            #     f2.writelines(added_instructions)
            # sys.exit()
            
            increase_number = len(added_instructions) - 2 # increase_number is the number all remained numbers should plus.
            
            # print(added_instructions)
            
            # Update each remained numbers, including %numbers and block numbers.
            target_function_contents = update_number.update_other_instructions(target_function_contents, changes_start_indx, increase_number, added_instruction_number-1)
            
            # Build the whole new IR.
            new_datas = other_comm_funcs.build_new_datas(datas, added_instructions, target_function_contents, changes_start_indx, target_function_start, target_function_end)
            
        # Write the new IR.
        with open(self.outfile, 'w') as f2:
            f2.writelines(new_datas)

    
if __name__ == '__main__':

    test = InsertDecFieldCall("bitcode/mosquitto/mosquitto_mutated.ll", "bitcode/mosquitto/mosquitto_mutated.ll")
    test.insertFieldCall()