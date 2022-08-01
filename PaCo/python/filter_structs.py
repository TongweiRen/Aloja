import os
import sys
import re
from typing import Union
import comm_funcs
from rich.console import Console
console = Console()

def filter_public_structs(current_structs):

    '''
    This function is used to remove public structs from the current structs set.
    '''

    public_structs = ['UT_hash_handle', 'UT_hash_table', 'UT_hash_bucket', 'anon', 
    '_IO_FILE', '_IO_marker', '_IO_codecvt', '_IO_wide_data', 'addrinfo', 'sockaddr',
    '__dirstream', 'dirent', '__va_list_tag', 'tm', 'timeval', '__SOCKADDR_ARG', 
    '__sigset_t', 'timezone', 'config_recurse', 'pollfd', 'ifreq', 'ifmap', 'sockaddr_in',
    'in_addr', 'sockaddr_in6', 'in6_addr', 'sockaddr_storage', 'std::_Rb_tree_iterator']

    len_1 = len(current_structs)

    for item in public_structs:
        if item in current_structs:
            current_structs.remove(item)
    len_2 = len(current_structs)
    
    # console.print(f"[bold magenta][+][/bold magenta] After filtering public structs, removed [bold yellow]{len_1-len_2}[/bold yellow] structs, current structs are: {current_structs}")
    # console.print(f"[bold magenta][+][/bold magenta] After filtering public structs, removed [bold yellow]{len_1-len_2}[/bold yellow] FP structs.")
    return current_structs

def filter_non_inputs_strcuts(IR_file, current_structs):

    '''
    This function is used to remove structs that have never been an input of any function.
    '''

    datas = []
    with open(IR_file, 'r') as f:
        datas = f.readlines()
    input_structs = []
    for item in current_structs:
        for line in datas:
            if line.startswith("define ") and f"struct.{item}*" in line:
                input_structs.append(item)
                break
    # for line in datas:
    #     if line.startswith("define "):
    #         p = re.compile(r"[(](.*?)[)]", re.S)
    #         pre_root = re.findall(p, line)[0].split(", ")
    #         p1 = re.compile(r"[.](.*?)[*]", re.S)
    #         for item in pre_root:
    #             if item.startswith("%struct"):
    #                 input_structs.append(re.findall(p1, item)[0])
    len_1 = len(current_structs)
    for item in current_structs:
        if item not in input_structs:
            current_structs.remove(item)
    len_2 = len(current_structs)

    # console.print(f"[bold magenta][+][/bold magenta] After filtering non-input structs, removed [bold yellow]{len_1-len_2}[/bold yellow] structs, current structs are: {current_structs}")
    # console.print(f"[bold magenta][+][/bold magenta] After filtering non-input structs, removed [bold yellow]{len_1-len_2}[/bold yellow] FP structs.")
    return current_structs

def controlStructFilter(current_structs, IR_file):

    '''
    This function is used to run all filtering functions in one function, make it easier to management.
    '''

    len_1 = len(current_structs)
    current_structs = filter_public_structs(current_structs)
    current_structs = filter_non_inputs_strcuts(IR_file, current_structs)
    len_2 = len(current_structs)
    console.print(f"[bold green][+][/bold green] Removed [bold yellow]{len_1-len_2}[/bold yellow] FP structs. Remained [bold yellow]{len_2}[/bold yellow] structs. :thumbs_up:")

    return current_structs

def Func0(datas, funcname, cur_pos):

    '''
    This is the third-level script function, called by Func2.
    '''

    target_function_contents = []
    numb_1 = ''
    TP_struct = ''
    call_id = 0
    for i in range(len(datas)):
        if "call " in datas[i] and f" @{funcname}(" in datas[i] and not datas[i].startswith("  tail"):
            # console.print(f"in Func0_0 {datas[i]}, and {i}")
            call_id = i
            flag = False
            numb_1 = datas[i].split(" = ")[0].split("%")[1]
            # console.print(f"in Func0_2 {numb_1}")
            for j in range(i):
                if datas[i-j].startswith("define"):
                    # console.print(f"in Func0_3 {datas[i-j]}")
                    p = re.compile(r"[@](.*?)[(]", re.S)
                    funcname = re.findall(p, datas[i-j])[0]
                    target_function_contents, target_function_start, target_function_end = comm_funcs.find_function(datas, funcname)
                    # console.print(f"in Func0_4 {target_function_contents[0]}")
                    if flag:
                        return target_function_contents, numb_1, TP_struct, call_id
                    break
            break
    if numb_1 == '': # This means there is no other function that call funcname, so we should directly end the searching.
        return target_function_contents, '', 'Nothing', call_id
    numb_2 = ''
    # console.print(f"in Func0_0 end")
    for i in range(len(target_function_contents)):
        if f"%{numb_1}" in target_function_contents[i] and not target_function_contents[i].startswith("  call void @llvm.dbg.declare"):
            # console.print(f"in Func0_1 {target_function_contents[i]}, and {cur_pos}")
            m = str(target_function_contents[i])
            if m.count("(", 0, len(m)) > 2 and m.count(")", 0, len(m)) > 2:
                TP_struct = "Nothing"
                return target_function_contents, numb_2, TP_struct, call_id
            p = re.compile(r"[(](.*?)[)]", re.S)
            a_temp = re.findall(p, target_function_contents[i])[0].split(", ")
            # console.print(f"in Func0_2 {a_temp}")
            a = ''
            if len(a_temp) <= int(cur_pos):
                TP_struct = "Nothing"
                return target_function_contents, numb_2, TP_struct, call_id
            else:
                a = re.findall(p, target_function_contents[i])[0].split(", ")[int(cur_pos)]
            if "%struct" in a:
                # console.print(f"in Func0_2 {target_function_contents[i]}")
                TP_struct = a.split("struct.")[1].split("*")[0]
                break
            else:
                try:
                    numb_2 = a.split("%")[1]
                except:
                    break
                break
    return target_function_contents, numb_2, TP_struct, call_id

count = 0
# check = ""
# check_flag = False

def Func1(target_function_contents, pre_numb):

    '''
    This is the third-level script function, called by Func2.
    '''

    new_numb = ''
    new_pos = ''
    new_funcname = ''
    TP_struct = ''
    global count
    # global check
    # global check_flag
    check_numb = pre_numb
    # if check_flag:
    #     target_function_contents.remove(check)
    #     check_flag = False
    # console.print(f"in Func1 [red][+][/red] {pre_numb}")
    for i in range(len(target_function_contents)):
        if f"%{pre_numb}" in target_function_contents[i] and i != 0 and not target_function_contents[i].startswith("  call void @llvm.dbg.declare"):
            # console.print(f"in Func1_0 [red][+][/red] {target_function_contents[i]}")
            if "struct." not in target_function_contents[i]:
                # console.print("in Fun1_5, no struct.")
                numbs = []
                if "%union." in target_function_contents[i]:
                    x = target_function_contents[i].split(" ")
                    for item in x:
                        if item.startswith("%") and not item.startswith("%union"):
                            y = item.strip("%")
                            y = y.strip(",")
                            numbs.append(y)
                else:
                    p = re.compile(r"[%](.*?)[,]", re.S)
                    numbs = re.findall(p, target_function_contents[i])
                # console.print(f"in Func1_6 {numbs}")
                if len(numbs) >= 2:
                    if "getelementptr inbounds %union." in target_function_contents[i]:
                        # if check == target_function_contents[i]:
                        #     check_flag = True
                        # check = target_function_contents[i]
                        new_numb = numbs[0]
                        if check_numb == new_numb:
                            count += 1
                        else:
                            count = 0
                        if count >= 5:
                            count = 0
                            # console.print("count 5")
                            return new_numb, new_funcname, new_pos, "Nothing"
                    elif " = " in target_function_contents[i]:
                        new_numb = numbs[1]
                        if check_numb == new_numb:
                            count += 1
                        else:
                            count = 0
                        if count >= 5:
                            count = 0
                            return new_numb, new_funcname, new_pos, "Nothing"
                    else:
                        new_numb = numbs[0]
                        if check_numb == new_numb:
                            count += 1
                        else:
                            count = 0
                        if count >= 5:
                            count = 0
                            return new_numb, new_funcname, new_pos, "Nothing"
                    break
                else: # For example: %5 = alloca i8*, align 8
                    continue
            else:
                # console.print(f"in Func1_1 [red][+][/red] {target_function_contents[i]}")
                TP_struct = target_function_contents[i].split("struct.")[1].split("*")[0]
        elif f"%{pre_numb}" in target_function_contents[i] and i == 0:
            p = re.compile(r"[(](.*?)[)]", re.S)
            a = re.findall(p, target_function_contents[i])[0].split(", ")
            for i_a in range(len(a)):
                if f"%{pre_numb}" in a[i_a]:
                    if "%struct" in a[i_a]:
                        # console.print(f"in Func1_3 [red][+][/red] {target_function_contents[i]}")
                        TP_struct = a[i_a].split("struct.")[1].split("*")[0]
                        break
                    else:
                        ''' If the reversing gets back to the inputs of this function, we should change to former function. '''
                        p = re.compile(r"[@](.*?)[(]", re.S)
                        new_funcname = re.findall(p, target_function_contents[i])[0]
                        # console.print(f"in Func1_4 [red][+][/red] {new_funcname}")
                        new_pos = str(i_a)
                        # target_function_contents, target_function_start, target_function_end = comm_funcs.find_function(datas, new_funcname)
                        break
            break
    return new_numb, new_funcname, new_pos, TP_struct

def Func2(datas, funcname, pos):

    '''
    This is the second-level script function, called by Func3.
    '''

    new_funcname = ''
    new_pos = ''
    TP_struct = ''
    target_function_contents, numb, TP_struct, call_id = Func0(datas, funcname, pos)
    # console.print(f"in Func2_0 [red][+][/red] {numb}")
    if TP_struct != '':
        return new_funcname, new_pos, TP_struct, call_id
    Flag = True
    while(Flag):
        numb, new_funcname, new_pos, TP_struct = Func1(target_function_contents, numb)
        # console.print(f"in Func2_1 [red][+][/red] {TP_struct}")
        # console.print(f"in Func2_2 [red][+][/red] {new_funcname}")
        if TP_struct != '':
            Flag = False
            return new_funcname, new_pos, TP_struct, call_id
        if new_funcname != '':
            Flag = False
            return new_funcname, new_pos, TP_struct, call_id

def Func3_memcpy(datas, funcname, pos, functions):

    '''
    This is the first-level script-func that is used to reverse memcpy function inputs.
    Parameters: funcname is the name of socket function, read or write
                pos is the index of input we want to reverse, 1 is the target index
                functions is a list of TP functions that is getten from PaCo_pipelineFuncs.findFuncsFromMemcpy.
    PS: call_id in this function means the index of datas that datas[call_id] is a line of instruction calling memcpy.
    '''

    TP_structs = []
    while len(functions) > 0:
        # console.print("[red]next[/red]")
        # console.print(f"in Func3_memcpy_0 {len(datas)}")
        Flag = True
        new_funcname, new_pos, TP_struct, call_id = Func2(datas, funcname, pos)
        # console.print(f"new_funcname is {new_funcname}")
        if new_funcname == '' and TP_struct == "Nothing":
            break
        if new_funcname in functions:
            target_function_contents, target_function_start, target_function_end = comm_funcs.find_function(datas, new_funcname)
            # console.print(f"in func3_memp_0 {TP_struct}")
            # console.print(f"target_function_start is {target_function_start}")
            # console.print(f"funcname is {funcname}")
            del datas[target_function_start:target_function_end]
            functions.remove(new_funcname)
            # console.print(functions)
            # console.print(TP_struct)
        else:
            del datas[call_id]
        # console.print(f"in Func3_memcpy_1 {len(datas)}")
        # console.print(f"[bold magenta][+][/bold magenta] After analyze write function, TP_struct is: {TP_struct}")
            
        if TP_struct != '':
            Flag = False
            TP_structs.append(TP_struct)
        while(Flag):
            new_funcname, new_pos, TP_struct, call_id2 = Func2(datas, new_funcname, new_pos)
            if TP_struct != '':
                Flag = False
                TP_structs.append(TP_struct)
        
        
        # break
    
    return TP_structs

def Func3(datas, funcname, pos):

    '''
    This is the first-level script-func that is used to reverse socket function inputs.
    Parameters: funcname is the name of socket function, read or write
                pos is the index of input we want to reverse, 0 is sock, 1 is buf
    '''

    Flag = True
    new_funcname, new_pos, TP_struct, call_id = Func2(datas, funcname, pos)
    # console.print(f"[bold magenta][+][/bold magenta] After analyze write function, TP_struct is: {TP_struct}")
    if TP_struct != '':
        Flag = False
    while(Flag):
        new_funcname, new_pos, TP_struct, call_id = Func2(datas, new_funcname, new_pos)
        if TP_struct != '':
            Flag = False
    
    return TP_struct

def reverseSocketFunc(IR_file):

    '''
    This function is used to reverse buf/sock inputs of socket functions, like read and write, so as to get TP structs.
    '''

    TP_structs = []
    datas = []
    with open(IR_file, 'r') as f:
        datas = f.readlines()
    flag_write = False
    flag_read = False
    flag_send = False
    flag_recv = False
    for line in datas:
        if "call " in line and " @write(" in line:
            flag_write = True
            break
    for line in datas:
        if "call " in line and " @read(" in line:
            flag_read = True
            break
    for line in datas:
        if "call " in line and " @send(" in line:
            flag_send = True
            break
    for line in datas:
        if "call " in line and " @recv(" in line:
            flag_recv = True
            break
    
    # if flag_read:
    #     a = Func3(datas, "read", 1).split(",")[0]
    #     a = a.strip("]")
    #     a = a.strip("\"")
    #     a = a.strip("*")
    #     if a not in TP_structs and a != "Nothing":
    #         TP_structs.append(a)
    
    if flag_write:
        # a = Func3(datas, "write", 0).split(",")[0]
        # a = a.strip("]")
        # a = a.strip("\"")
        # a = a.strip("*")
        # if a not in TP_structs and a != "Nothing":
        #     TP_structs.append(a)
        a = Func3(datas, "write", 1).split(",")[0]
        a = a.strip("]")
        a = a.strip("\"")
        a = a.strip("*")
        if a not in TP_structs and a != "Nothing":
            TP_structs.append(a)
    elif flag_send:
        a = Func3(datas, "send", 1).split(",")[0]
        a = a.strip("]")
        a = a.strip("\"")
        a = a.strip("*")
        if a not in TP_structs and a != "Nothing":
            TP_structs.append(a)
    
    # console.print(f"[bold green][+][/bold green] Found TP structs: {TP_structs}! :thumbs_up:")

    return TP_structs

def reverseMemcpyFunc(IR_file, TP_functions):

    '''
    This function is used to reverse inputs of memcpy function, so as to get TP structs.
    '''

    TP_structs = []
    datas = []
    with open(IR_file, 'r') as f:
        datas = f.readlines()

    flag_memcpy = False

    for line in datas:
        if "call " in line and " @llvm.memcpy.p0i8.p0i8.i64(" in line:
            flag_memcpy = True
            break
    if flag_memcpy:
        temp_TP_structs = Func3_memcpy(datas, "llvm.memcpy.p0i8.p0i8.i64", 1, TP_functions)
        for item in temp_TP_structs:
            a = item.split(",")[0]
            a = a.strip("]")
            a = a.strip("\"")
            a = a.strip("*")
            if a not in TP_structs and a != "Nothing":
                TP_structs.append(a)

    return TP_structs

def controlTPFilters(IR_file, TP_functions):

    '''
    This function is used to control functions used to find TP structs.
    '''

    TP_Structs = []
    a = reverseSocketFunc(IR_file)
    # b = reverseMemcpyFunc(IR_file, TP_functions)
    for item in a:
        item = item.split(".")[0]
        if item not in TP_Structs:
            TP_Structs.append(item)
    # for item in b:
    #     item = item.split(".")[0]
    #     if item not in TP_Structs:
    #         TP_Structs.append(item)

    console.print(f"[bold green][+][/bold green] Found TP structs: {TP_Structs}! :thumbs_up:")
    
    return TP_Structs


def main():

    # structs = []
    # with open("all_Structs_List.txt", 'r') as f:
    #     structs = f.readlines()
    # current_structs = []
    # for item in structs:
    #     current_structs.append(item.split(" ")[1][0:-1])
    # console.print(f"[bold magenta][+][/bold magenta] Before filtering, current structs are: {current_structs}")

    # controlStructFilter(current_structs, "../mosquitto.ll")
    reverseSocketFunc("../mosquitto.ll")

if __name__ == "__main__":
    main()