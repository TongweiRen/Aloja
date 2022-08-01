#!/usr/bin/env python3

import sys
import os
wdir = os.getcwd()
sys.path.append(wdir + "/utils")
import re
import update_number
import other_comm_funcs
from rich.console import Console
console = Console()

'''
This file is used to insert encryption mutation into the constructor function. It will first insert change field value function 
and other contents, including Aloja_container struct and related variables, into the target IR file. 
Then it will automatically find the last place(s) in the target function where the target field is written,
then inject change field value function call. Besides, this is i64-based mutation.
'''

class ChangeFieldValue:
    
    def __init__(self, file_name, outfile, struct_name, fieldname, field_index, function_name):
        self.fname = file_name
        self.outfile = outfile
        self.funcname = function_name
        self.fieldname = fieldname
        self.struct_name = struct_name
        self.field_index = field_index
        return

    def insertStructAndNonce(self):

        # wrapper_struct = "%struct.Aloja_container = type {{ %struct.{}*, i8*, i32, i32 }}\n".format(self.messname)
        wrapper_struct = "%struct.Aloja_container = type { i8*, i64, i32 }\n"
        # print("The inserted wrapper struct is: {}".format(wrapper_struct))
        time_struct = "%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }\n"
        # print("The inserted time struct is: {}".format(time_struct))
        function_name = "change_static_value"
        nonce_list_str = "@{}.nonce = private unnamed_addr constant [4 x i64] [i64 13, i64 28, i64 92, i64 65], align 16\n".format(function_name)
        # print("The inserted nonce list definition is: {}".format(nonce_list_str))

        target_symbol = "%struct." # used to locate the posistion for inserting strcut definition.
        target_symbol2 = "@.str." # used to locate the posistion for inserting id value definition.

        old_datas = []
        new_datas = []
        insert_position = 0
        insert_position2 = 0
        struct_flag = True

        with open(self.fname, 'r') as f:
            old_datas = f.readlines()

            # To find whether there is struct.tm
            tm_flag = True
            for i in range(0, len(old_datas)):
                if old_datas[i].startswith(time_struct): # If there is time struct, do not insert.
                    tm_flag = False
                    break
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
                if old_datas[n].startswith(target_symbol2):
                    insert_position2 = n
                    break
            
            for n in range(0, insert_position):
                new_datas.append(old_datas[n])
            
            if Aloja_flag:
                new_datas.append(wrapper_struct)
            if tm_flag:
                new_datas.append(time_struct)         
            
            for n in range(insert_position, insert_position2):
                new_datas.append(old_datas[n])
            
            new_datas.append(nonce_list_str)

            for n in range(insert_position2, len(old_datas)):
                new_datas.append(old_datas[n])
            
        # # Write the new IR.
        # with open("wrapper_struct_output.ll", 'w') as f:
        #     f.writelines(new_datas)
        
        return new_datas

    def insertAttributes(self, datas, attributes, line):
        temp_datas = []
        for i in range (0, line+1):
            temp_datas.append(datas[i])
        temp_datas.append(attributes)
        for i in range (line+1, len(datas)):
            temp_datas.append(datas[i])
        datas = temp_datas
        return datas

    def insertChangeFieldValue(self, datas):

        ### This function is used to insert the chan_sta_val_fun into the IR file. The input file should be original client IR file,
        # the output file is mutated client IR file including chan_sta_val_fun. ###

        chan_sta_val_fun = [] # chan_sta_val_fun contains the chan_sta_val_fun's instructions.
        wdir = os.getcwd()
        with open(wdir + "/templates/int64/field_value_change_int64.txt", 'r') as f:
            chan_sta_val_fun = f.readlines()
        chan_sta_val_fun.append('\n')

        target_symbol = "; Function Attrs: noinline nounwind optnone uwtable" # it is used to find the position to insert chan_sta_val_fun.

        new_datas = [] # it's used to record the mutated IR contents.
        insert_position = 0 # the index that we should insert chan_sta_val_fun.

        # with open(self.fname, 'r') as f:
        #     datas = f.readlines()

        # To prepare some infos for time instructions.
        nounwind_lable1 = " nounwind \"correctly-rounded-divide-sqrt-fp-math\"=\"false\" \"disable-tail-calls\"=\"false\" \"frame-pointer\"=\"all\" \"less-precise-fpmad\"=\"false\" \"no-infs-fp-math\"=\"false\" \"no-nans-fp-math\"=\"false\" \"no-signed-zeros-fp-math\"=\"false\" \"no-trapping-math\"=\"false\" \"stack-protector-buffer-size\"=\"8\" \"target-cpu\"=\"x86-64\" \"target-features\"=\"+fxsr,+mmx,+sse,+sse2,+x87\" \"unsafe-fp-math\"=\"false\" \"use-soft-float\"=\"false\" "
        nounwind1 = ''
        number1 = ''
        nounwind_lable2 = " nounwind "
        number2 = ''
        nounwind2 = ''
        attributes_list = []
        last_attr_line = 0
        last_attr = 0
        for i in range(0, len(datas)):
            if datas[i].startswith("attributes #"):
                attributes_list.append(datas[i])
                last_attr_line = i
        last_attr = len(attributes_list)
        for i in range(0, len(attributes_list)):
            p = re.compile(r"[{](.*?)[}]", re.S)
            attributes = re.findall(p, attributes_list[i])[0]
            if attributes == nounwind_lable1:
                number1 = attributes_list[i].split(" ")[1]
            if attributes == nounwind_lable2:
                number2 = attributes_list[i].split(" ")[1]
        if number1 == '':
            nounwind1 = "attributes #{} = {{ nounwind \"correctly-rounded-divide-sqrt-fp-math\"=\"false\" \"disable-tail-calls\"=\"false\" \"frame-pointer\"=\"all\" \"less-precise-fpmad\"=\"false\" \"no-infs-fp-math\"=\"false\" \"no-nans-fp-math\"=\"false\" \"no-signed-zeros-fp-math\"=\"false\" \"no-trapping-math\"=\"false\" \"stack-protector-buffer-size\"=\"8\" \"target-cpu\"=\"x86-64\" \"target-features\"=\"+fxsr,+mmx,+sse,+sse2,+x87\" \"unsafe-fp-math\"=\"false\" \"use-soft-float\"=\"false\" }}\n".format(last_attr)
            number1 = "#{}".format(last_attr)
            last_attr += 1
            datas = self.insertAttributes(datas, nounwind1, last_attr_line)
            last_attr_line += 1   
        if number2 == '':
            nounwind2 = "attributes #{} = {{ nounwind }}".format(last_attr)
            number2 = "#{}".format(last_attr)
            last_attr += 1
            datas = self.insertAttributes(datas, nounwind2, last_attr_line)
            last_attr_line += 1

        for i in range(0, len(chan_sta_val_fun)):
            if "call i64 @time" in chan_sta_val_fun[i]:
                # %7 = call i64 @time(i64* %4) #7
                chan_sta_val_fun[i] = chan_sta_val_fun[i].split("#")[0] + number2 + "\n"
            if "call %struct.tm* @gmtime" in chan_sta_val_fun[i]:
                chan_sta_val_fun[i] = chan_sta_val_fun[i].split("#")[0] + number2 + "\n"
        
        time_ins0 = "; Function Attrs: nounwind\n"
        time_ins1 = "declare dso_local i64 @time(i64*) {}\n\n".format(number1)
        gmtime_ins0 = "; Function Attrs: nounwind\n"
        gmtime_ins1 = "declare dso_local %struct.tm* @gmtime(i64*) {}\n\n".format(number1)
        time_ins_flag = True
        gmtime_ins_flag = True
        for item in datas:
            if "declare" in item and "i64 @time(i64*)" in item:
            # if item.startswith("declare dso_local i64 @time(i64*)") or item.startswith("declare i64 @time(i64*)"): # If there is time function, do not insert.
                time_ins_flag = False
            if "declare" in item and "%struct.tm* @gmtime(i64*)" in item:
            # if item.startswith("declare dso_local %struct.tm* @gmtime(i64*)") or item.startswith("declare %struct.tm* @gmtime(i64*)"): # If there is gmtime function, do not insert.
                gmtime_ins_flag = False
        if time_ins_flag:
            chan_sta_val_fun.append(time_ins0)
            chan_sta_val_fun.append(time_ins1)
        if gmtime_ins_flag:
            chan_sta_val_fun.append(gmtime_ins0)
            chan_sta_val_fun.append(gmtime_ins1)
        
        # with open("./test.ll", 'w') as f:
        #     f.writelines(chan_sta_val_fun)
        # sys.exit()


        new_datas = other_comm_funcs.insert_function(datas, chan_sta_val_fun)
            
        # Write the new IR.
        # with open("./pre_chanStaVal_test_output.ll", 'w') as f:
        #     f.writelines(new_datas)
        
        return new_datas


    def insertFunctionCall(self, datas):
        
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
        # console.print("target_instuction_symbol_1:", target_instuction_symbol_1)
        # console.print("target_instuction_symbol_2:", target_instuction_symbol_2)
        # console.print("target_instuction_symbol_3:", target_instuction_symbol_3)
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
                            if f'i64* %{number}' in target_function_contents[j].split(", ")[1]:
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
        # console.print(f"GEPs: {GEPs}")

        # These are example instructions:
        # %230 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !621
        # %231 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %230, i32 0, i32 3, !dbg !622
        # %232 = load i32, i32* %231, align 4, !dbg !622
        # %233 = call i32 @change_static_value(i32 %232), !dbg !623
        # %234 = load %struct.mosquitto__packet*, %struct.mosquitto__packet** %10, align 8, !dbg !624
        # %235 = getelementptr inbounds %struct.mosquitto__packet, %struct.mosquitto__packet* %234, i32 0, i32 3, !dbg !625
        
        # To build all inserted instructions.
        # GEPs = update_number.update_other_instructions(GEPs, 0, 2, added_instruction_number-2)
        low_bound = int(GEPs[0].split(" = ")[0].split("%")[1])
        # GEPs = update_number.update_other_instructions(GEPs, 0, len(GEPs), added_instruction_number-2)
        GEPs = update_number.update_other_instructions(GEPs, 0, added_instruction_number-low_bound, low_bound)
        # console.print(f"GEPs: {GEPs}")
        
        for item in GEPs:
            added_instructions.append(item)
        current_numb = added_instruction_number + len(added_instructions)
        # print("current_numb: " + str(current_numb))
        instruction_0 = "  %{} = load i64, i64* %{}, align 8\n".format(current_numb, current_numb-1)
        instruction_1 = "  %{} = call i64 @change_static_value(i64 %{})\n".format(current_numb+1, current_numb)
        added_instructions.append(instruction_0)
        added_instructions.append(instruction_1)
        GEPs = update_number.update_other_instructions(GEPs, 0, len(GEPs)+2, current_numb-2)
        # console.print(f"GEPs: {GEPs}")
        for item in GEPs:
            added_instructions.append(item)
        current_numb2 = added_instruction_number + len(added_instructions)
        instruction_0 = "  store i64 %{}, i64* %{}, align 8\n".format(current_numb+1, current_numb2-1)
        added_instructions.append(instruction_0)
        # with open("./test.ll", 'w') as f2:
        #     f2.writelines(added_instructions)
        # sys.exit()
        # console.print("Added instructions are: {}".format(added_instructions))

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

    test = ChangeFieldValue("bitcode/mosquitto/mosquitto_sub.ll", "bitcode/mosquitto/mosquitto_sub_mutated.ll", 'mosquitto__packet', "remaining_length", 3, "send__connect")
    # test = ChangeFieldValue("bitcode/mqttc/simple_publisher.ll", "bitcode/mqttc/simple_publisher_mutated.ll", "mqtt_client.7", "keep_alive", 2, "mqtt_connect")
    # test = ChangeFieldValue("bitcode/wakaama/lightclient.ll", "bitcode/wakaama/lightclient_mutated.ll", "coap_packet_t", "payload_len", 37, "coap_set_payload")
    temp_datas = test.insertStructAndNonce()
    temp_datas2 = test.insertChangeFieldValue(temp_datas)
    test.insertFunctionCall(temp_datas2)
