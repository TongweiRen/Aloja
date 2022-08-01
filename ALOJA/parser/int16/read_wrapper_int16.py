#!/usr/bin/env python3

import sys
import os
wdir = os.getcwd()
sys.path.append(wdir + "/utils")
import update_number
import other_comm_funcs
from copy import deepcopy
from rich.console import Console
console = Console()

class InsertReadWrapperCall:
    
    def __init__(self, file_name, outfile, structname, fieldname, field_index, function_name):
        self.fname = file_name
        self.outfile = outfile
        self.structname = structname
        self.fieldname = fieldname
        self.field_index = field_index
        self.function_name = function_name
        return

    def insertReadWrapperCall(self):
        
        datas = [] # used to store instructions read from the IR file.
        with open(self.fname, 'r') as f:
            datas = f.readlines()
        
        target_function_contents, target_function_start, target_function_end = other_comm_funcs.find_function(datas, self.function_name)
        
        
        inject_point = 0 # where to inject wrapper call

        target_field_symbol_1 = f"getelementptr inbounds %struct.{self.structname}, %struct.{self.structname}* "
        # console.print(target_field_symbol_1)
        # target_field_symbol_2 = f", i32 0, i32 {self.field_index},"
        # target_field_symbol_3 = f", i64 0, i32 {self.field_index},"
        target_field_symbol_2 = f", i32 0, i32 {self.field_index}"
        target_field_symbol_3 = f", i64 0, i32 {self.field_index}"
        # console.print(target_field_symbol_3)
        temp_GEPs = []
        for i in range(0, len(target_function_contents)):
            # console.print(target_function_contents[i])
            if target_field_symbol_1 in target_function_contents[i] and target_field_symbol_2 in target_function_contents[i] and 'load' in target_function_contents[i+1]:
                temp_GEPs.append(target_function_contents[i].split(", !dbg")[0]+"\n")
                for n in range(1, i):
                    if " = getelementptr inbounds %struct." in target_function_contents[i-n]:
                        temp_GEPs.append(target_function_contents[i-1].split(", !dbg")[0]+"\n")
                    elif " = load %struct." in target_function_contents[i-n] and target_function_contents[i-n].split(" = load %struct.")[0].split("  ")[1] in target_function_contents[i-n+1]:
                        temp_GEPs.append(target_function_contents[i-n].split(", !dbg")[0]+"\n")
                        break
                    else:
                        break
                break
            elif target_field_symbol_1 in target_function_contents[i] and target_field_symbol_3 in target_function_contents[i] and 'load' in target_function_contents[i+1]:
                temp_GEPs.append(target_function_contents[i].split(", !dbg")[0]+"\n")
                # console.print(target_function_contents[i])
                for n in range(1, i):
                    if " = getelementptr inbounds %struct." in target_function_contents[i-n]:
                        temp_GEPs.append(target_function_contents[i-1].split(", !dbg")[0]+"\n")
                    elif " = load %struct." in target_function_contents[i-n] and target_function_contents[i-n].split(" = load %struct.")[0].split("  ")[1] in target_function_contents[i-n+1]:
                        temp_GEPs.append(target_function_contents[i-n].split(", !dbg")[0]+"\n")
                        break
                    else:
                        break
                break
        
        temp_GEPs.reverse()
        # console.print(temp_GEPs)
        if len(temp_GEPs) == 0:
            for i in range(0, len(target_function_contents)):
                if target_field_symbol_1 in target_function_contents[i] and (target_field_symbol_2 in target_function_contents[i] or target_field_symbol_3 in target_function_contents[i]):
                    temp_GEPs.append(target_function_contents[i].split(", !dbg")[0])
                    if not temp_GEPs[0].endswith("\n"):
                        temp_GEPs[0] += "\n"
                    break

        added_instruction_number = 0
        temP1 = temp_GEPs[0].split(",")[1].split("%")[2]
        for i in range(len(target_function_contents)):
            if (f'%{temP1} ' in target_function_contents[i] or f'%{temP1},' in target_function_contents[i]) and 'store' in target_function_contents[i]:
                inject_point = i + 1
                # console.print(f"target_function_contents[i]: {target_function_contents[i]}")
                for n in range(1, i):
                    if target_function_contents[i-n].startswith("  %"):
                        # console.print(f"target_function_contents[i-n]: {target_function_contents[i-n]}")
                        added_instruction_number = int(target_function_contents[i-n].split(" = ")[0].split("%")[1]) + 1
                        break
                break
        
        if added_instruction_number == 0 or f'%{temP1},' in target_function_contents[0]:
            for i in range(len(target_function_contents)):
                if temp_GEPs[0][0:-1] in target_function_contents[i]:
                    inject_point = i
                    added_instruction_number = int(target_function_contents[i].split(" = ")[0].split("%")[1])
                    break

        # console.print(f"inject_point: {inject_point}")
        # console.print(f"added_instruction_number: {added_instruction_number}")

        added_instructions = []
        # instruction_alloca = f'%{added_instruction_number} = alloca i32, align 4'
        # added_instructions.append(instruction_alloca)
        
        GEPs = deepcopy(temp_GEPs)
        numb_1 = int(temp_GEPs[0].split(" = ")[0].split("%")[1])
        diff = added_instruction_number - numb_1
        # console.print(f"diff: {diff}")
        # GEPs = update_number.update_other_instructions(GEPs, 0, diff, added_instruction_number-len(temp_GEPs)-1)
        GEPs = update_number.update_other_instructions(GEPs, 0, diff, numb_1)
        # console.print(f"GEPs: {GEPs}")

        
        for item in GEPs:
            added_instructions.append(item)
        current_numb = added_instruction_number + len(added_instructions) - 1
        instruction_0 = f"  %{current_numb+1} = load i16, i16* %{current_numb}, align 4\n"
        instruction_1 = f"  %{current_numb+2} = call i16 @Aloja_Wrapper_Function(i16 %{current_numb+1})\n"
        # console.print(f"[+] instruction_0 is : {instruction_0}")
        added_instructions.append(instruction_0)
        # console.print(f"[+] instruction_1 is : {instruction_1}")
        added_instructions.append(instruction_1)

        # instruction_4 = f'  %{current_numb+3} = call i32 (%struct.mosquitto*, i32, i8*, ...) @log__printf(%struct.mosquitto* null, i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.test, i32 0, i32 0), i32 %{current_numb+2})\n'
        # console.print(f"[+] instruction_4 is : {instruction_4}")
        # added_instructions.append(instruction_4)
        
        # GEPs = update_number.update_other_instructions(GEPs, 0, len(temp_GEPs)+2, added_instruction_number-len(temp_GEPs)-1)
        GEPs = update_number.update_other_instructions(GEPs, 0, len(temp_GEPs)+2, added_instruction_number)
        # console.print(f"GEPs: {GEPs}")
        for item in GEPs:
            added_instructions.append(item)

        current_numb_2 = added_instruction_number + len(added_instructions) - 1
        # console.print(f"[+] current_numb is : {current_numb_2}")
        instruction_store = f"  store i16 %{current_numb+2}, i16* %{current_numb_2}, align 4\n"
        # instruction_store = f"  store i32 35, i32* %{current_numb_2}, align 4\n"
        # console.print(f"[+] instruction_store is : {instruction_store}")
        added_instructions.append(instruction_store)

        # GEPs = update_number.update_other_instructions(GEPs, 0, len(temp_GEPs), added_instruction_number-len(temp_GEPs)-1)
        GEPs = update_number.update_other_instructions(GEPs, 0, len(temp_GEPs), added_instruction_number)
        # console.print(f"GEPs: {GEPs}")
        for item in GEPs:
            added_instructions.append(item)

        # console.print(f"added_instructions: {added_instructions}")

        increase_number = len(added_instructions) - 1
        # console.print(f"[+] increase_number is : {increase_number}")

        # Update each remained numbers, including %numbers and block numbers.
        target_function_contents = update_number.update_other_instructions(target_function_contents, inject_point, increase_number, added_instruction_number)
        
            
        # Build the whole new IR.
        new_datas = other_comm_funcs.build_new_datas(datas, added_instructions, target_function_contents, inject_point, target_function_start, target_function_end)

        with open(self.outfile, 'w') as f2:
            f2.writelines(new_datas)

    
if __name__ == '__main__':

    # test = InsertReadWrapperCall("bitcode/mosquitto/mosquitto_mutated.ll", "bitcode/mosquitto/mosquitto_mutated.ll", "mosquitto__packet", "remaining_length", 3, "handle__connect")
    test = InsertReadWrapperCall("bitcode/mqttc/simple_subscriber_mutated.ll", "bitcode/mqttc/simple_subscriber_mutated.ll", "mqtt_client.7", "keep_alive", 2, "__mqtt_send")
    test.insertReadWrapperCall()