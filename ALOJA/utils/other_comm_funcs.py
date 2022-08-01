#!/usr/bin/env python3

import re
import get_indices


### The function used to find the target function ###
def find_function(datas, funcname):
    target_function_lable1 = "define " # target_function_lable1 is used to locate the function.
    target_function_lable2 = f"@{funcname}(" # # target_function_lable2 is used to locate the function.
    target_function_start = 0 # target_function_start is the start line number of function in IR.
    target_function_end = 0 # target_function_end is the end line number of function in IR.
    target_function_contents = [] # target_function_contents is used to record the whole function.

    flag = False
    for n in range(0, len(datas)):
        if datas[n].startswith(target_function_lable1) and target_function_lable2 in datas[n]:
            target_function_start = n
            # print("target_function_start: " + str(n))
            flag = True
            target_function_contents.append(datas[n])
        if flag:
            target_function_contents.append(datas[n])
            if datas[n].startswith("}"):
                target_function_end = n
                # print("target_function_end: " + str(n))
                break

    # print("len of target_function: " + str(len(target_function_contents)))

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

### The function used to get the structs and indices, from lowest level struct to the root struct.
def get_indices_structs(parent_st, root_name, datas, field_numb):
    structs = [] # structs is used to store all parent structs and root struct. structs[0] is the lowest level struct, and the last element is the root struct.
    indices = [] # indices is used to store all indices we will use later. indices[i] is corresponding to struct[i].
                 # When generate GEP instruction, it should be: %struct.structs[i]* %34, i32 0, i32 indices[i].
    
    # To get the structs.
    for item in parent_st:
        structs.append(item[0])
    structs.append(root_name)
    print("structs: {}".format(structs))

    # To get the indices.
    field_indice = get_indices.get_field_index(datas, field_numb)
    indices.append(field_indice)
    for item in parent_st:
        parent_indice = get_indices.get_field_index(datas, item[1])
        indices.append(parent_indice)
    print("indices: {}".format(indices))
    
    return structs, indices

### The function used to build the whole new IR. ###
def build_new_datas(datas, added_instructions, target_function_contents, changes_start_indx, target_function_start, target_function_end):
    new_datas = [] # new_datas contains all data writed into the new IR.
    
    # Add new instructions.
    for n in range(0, len(added_instructions)):
        target_function_contents.insert(changes_start_indx + n, added_instructions[n])

    # Build the whole new IR.
    for n in range(0, target_function_start):
        new_datas.append(datas[n])
    for n in range(1, len(target_function_contents)-1):
        new_datas.append(target_function_contents[n])
    for n in range(target_function_end, len(datas)):
        new_datas.append(datas[n])
    # for n in range(0, len(new_datas)):
    #     if new_datas[n].startswith("@"):
    #         new_datas.insert((n - 1), global_var)
    #         break

    return new_datas

### This function is used to insert a new function into IR file.
def insert_function(datas, function):
    target_symbol = "; Function Attrs: " # it is used to find the position to insert decryption function.
    new_datas = [] # it's used to record the mutated IR contents.
    insert_position = 0 # the index that we should insert decryption function.
    # To find the position to insert function
    for n in range(0, len(datas)):
        if datas[n].startswith(target_symbol):
            insert_position = n
            break    
    # The new_datas = (original IR contents before insert_posistion) + decryption function + (original IR contents start from insert_posistion to the end)
    for n in range(0, insert_position):
        new_datas.append(datas[n])
    for item in function:
        new_datas.append(item)
    for n in range(insert_position, len(datas)):
        new_datas.append(datas[n])
    
    return new_datas
