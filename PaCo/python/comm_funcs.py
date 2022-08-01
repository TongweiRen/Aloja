#!/usr/bin/env python3

import re
from rich.console import Console
console = Console()


### The function used to find the target function ###
def find_function(datas, funcname):
    target_function_lable1 = "define " # target_function_lable1 is used to locate the function.
    target_function_lable2 = f" @{funcname}(" # # target_function_lable2 is used to locate the function.
    target_function_start = 0 # target_function_start is the start line number of function in IR.
    target_function_end = 0 # target_function_end is the end line number of function in IR.
    target_function_contents = [] # target_function_contents is used to record the whole function.

    flag = False
    for n in range(0, len(datas)):
        if datas[n].startswith(target_function_lable1) and target_function_lable2 in datas[n]:
            target_function_start = n
            flag = True
            target_function_contents.append(datas[n])
        if flag:
            target_function_contents.append(datas[n])
            if "}" in datas[n]:
                target_function_end = n
                # print("target_function_end: " + str(n))
                break

    # print("len of target_function: " + str(len(target_function_contents)))
    # console.print(f"{funcname} target_function_start: {str(n)}")

    return target_function_contents, target_function_start, target_function_end

### The function used to get the input structs of target function. ###
def get_func_input_strs(target_function_contents):
    input_structs = [] # To store all input structs of target function.

    p = re.compile(r"[(](.*?)[)]", re.S)
    pre_root = re.findall(p, target_function_contents[0])[0].split(", ")
    p1 = re.compile(r"[.](.*?)[*]", re.S)
    for item in pre_root:
        if item.startswith("%struct"):
            input_structs.append(re.findall(p1, item)[0])
    
    return input_structs
