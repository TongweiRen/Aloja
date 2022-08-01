#!/usr/bin/env python3

import sys
import os
wdir = os.getcwd()
sys.path.append(wdir + "/utils")
import other_comm_funcs
import re
from rich.console import Console
console = Console()

class InsertWrapperStruct:
    
    def __init__(self, fname, outfile):
        self.fname = fname
        self.outfile = outfile
        return

    def insertWrapperStruct(self):

        wrapper_struct = "%struct.Aloja_container = type { i8*, i64, i32 }\n"
        # print("The inserted wrapper struct is: {}".format(wrapper_struct))
        time_struct = "%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }\n"
        # print("The inserted time struct is: {}".format(time_struct))
        nonce_list_str = "@Aloja_Wrapper_Function.nonce_list = private unnamed_addr constant [4 x i64] [i64 13, i64 28, i64 92, i64 65], align 16\n"
        # print("The inserted nonce list definition is: {}".format(nonce_list_str))
        id_str = "@.str.idValue = private unnamed_addr constant [5 x i8] c\"none\\00\", align 1\n"
        # print("The inserted id value definition is: {}".format(id_str))

        # test_str = '@.str.test = private unnamed_addr constant [11 x i8] c"length %d.\\00", align 1\n'

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
            
            new_datas.append(wrapper_struct)
            if tm_flag:
                new_datas.append(time_struct)

            for n in range(insert_position, insert_position2):
                new_datas.append(old_datas[n])
            
            new_datas.append(nonce_list_str)
            new_datas.append(id_str)
            # new_datas.append(test_str)
            
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
    
    def insertWrapperFunction(self, datas):

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
        
        
        # To build the wrapper function
        wrapper_function = [] # wrapper_function is used to store built wrapper function.
        wdir = os.getcwd()
        with open(wdir + "/templates/int64/wrapper_function_int64.txt", 'r') as f:
        # with open("../templates/wrapper_function.txt", 'r') as f:
            wrapper_function = f.readlines()
        wrapper_function.append("\n")

        # update time struct #number
        for i in range(0, len(wrapper_function)):
            if "call i64 @time" in wrapper_function[i]:
                wrapper_function[i] = wrapper_function[i].split("#")[0] + number2 + "\n"
            if "call %struct.tm* @gmtime" in wrapper_function[i]:
                wrapper_function[i] = wrapper_function[i].split("#")[0] + number2 + "\n"

        # To build time function
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
            wrapper_function.append(time_ins0)
            wrapper_function.append(time_ins1)
        if gmtime_ins_flag:
            wrapper_function.append(gmtime_ins0)
            wrapper_function.append(gmtime_ins1)

        # print("Wrapper function is: {}".format(wrapper_function))

        # with open("./wrapper_test_output.ll", 'w') as f:
        #     f.writelines(wrapper_function)

        # To insert wrapper function.
        new_datas = []
        new_datas = other_comm_funcs.insert_function(datas, wrapper_function)
            
        # Write the new IR.
        with open(self.outfile, 'w') as f:
            f.writelines(new_datas)

        

if __name__ == '__main__':

    # test = InsertWrapperStruct("bitcode/mosquitto/mosquitto_server.ll", "bitcode/mosquitto/mosquitto_mutated.ll")
    # test = InsertWrapperStruct("bitcode/mqttc/simple_subscriber.ll", "bitcode/mqttc/simple_subscriber_mutated.ll")
    test = InsertWrapperStruct("bitcode/wakaama/lwm2mserver.ll", "bitcode/wakaama/lwm2mserver_mutated.ll")
    temp_datas = test.insertWrapperStruct()
    test.insertWrapperFunction(temp_datas)
