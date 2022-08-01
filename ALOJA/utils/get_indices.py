#!/usr/bin/env python3


import re

### The function used to get the parent struct of the field we want to change. ###
def get_field_struct(datas, field):
    field_symbol = "\\bDW_TAG_member\\b"
    target_field = "name: \"" + field + "\""
    target_field_numb = '' # target_field_numb is the metadata number of target field.
    target_field_scope = '' # target_field_scope is the metadata number of target field's scope.
    parent_name = '' # parent_name is the parent struct of target field.
    par_numb = '' # par_numb is the metadata of parent struct.
    
    # To get the target_field_numb and target_field_scope.
    for data in datas:
        if data.startswith("!") and re.search(field_symbol, data) and re.search(target_field, data):
            target_field_numb = data.split(" = ")[0]
            target_field_scope = data.split("scope: ")[1].split(",")[0]
            break
        
    # To get the parent_name and par_numb.
    for data in datas:
        if data.startswith(target_field_scope) and data.split(" = ")[0] == target_field_scope:
            p = re.compile(r"[\"](.*?)[\"]", re.S)
            parent_name = re.findall(p, data.split("name: ")[1].split(",")[0])[0]
            par_numb = data.split(" = ")[0]
            break
    
    return target_field_numb, parent_name, par_numb

### To get the field name and related metadata number, which is corresponding to a parent struct, this struct is not the root struct. ###
def get_struct_field(datas, parent_name, par_numb):
    par_str_f_name = '' # par_str_f_name is the name of field, this field is corresponding to the parent struct.
    par_str_f_numb = '' # par_str_f_numb is the metadata number of field, this field is corresponding to the parent struct,
                        # this parent struct isn't root struct, it's a component of a higher level struct.
    for data in datas:
        if data.startswith("!") and len(data.split("baseType: ")) >= 2:
            a = data.split("baseType: ")[1].split(",")[0]
            if a:
                if a == par_numb:
                    p = re.compile(r"[\"](.*?)[\"]", re.S)
                    par_str_f_name = re.findall(p, data.split("name: ")[1].split(",")[0])[0]
                    par_str_f_numb = data.split(" = ")[0]
                    return par_str_f_name, par_str_f_numb

### To do the recursively searching. The function used to get pre-knowledge for getting indices. ###
def get_strcuts(datas, root_st, field_name):
    parent_st = [] # each item in parent_st will contain two things, one is the parent struct name, the other one is the metadata number of the field corresponding to this struct.
    field_numb = '' # field_numb is the metadata number of field we want to change.
    parent_name = '' # parent_name is a temporary parameter used to store parent struct name.
    par_numb = '' # par_numb is a temporary parameter used to store parent struct metadata number.
    target_field_numb = '' # target_field_numb is a temporary parameter used to store the return of function get_field_struct. We need the function to return it since we want to get field_numb.
    root_name = '' # root_name is the root struct name.
    field = field_name # This is the start point of whole recurisively searching.

    # To get the parent struct of the field we want to change.
    target_field_numb, parent_name, par_numb = get_field_struct(datas, field)
    field_numb = target_field_numb
    
    # If the parent struct we get from previous step is not one of the inputs of target function,
    # which means it isn't the root struct, do recursively searching until find the root struct.
    while(parent_name not in root_st):
        # if parent_name not in root_st:
        par_str_f_name, par_str_f_numb = get_struct_field(datas, parent_name, par_numb)
        a = []
        a.append(parent_name)
        a.append(par_str_f_numb)
        parent_st.append(a)
        field = par_str_f_name
        target_field_numb, parent_name, par_numb = get_field_struct(datas, field)
    # The last parent_name we get will be the root name.
    root_name = parent_name
    return field_numb, parent_st, root_name

### To get indices. The input of this function is the field's metadata number, the output is the indice of this field. ###
def get_field_index(datas, numb):
    target_field_scope = '' # target_field_scope is the parent struct metadata number.
    metadata_set_numb = '' # metadata_set_numb is elements' metadata set number of parent struct.
    metadata_set = [] # metadata_set is used to store all elements of parent struct.

    # To get the parent struct metadata number, which is this field's scope.
    for data in datas:
        if data.startswith(numb) and data.split(" = ")[0] == numb:
            target_field_scope = data.split("scope: ")[1].split(",")[0]
            break
    
    # To get the parent struct's metadata set, which contains all fields of this struct.
    for data in datas:
        if data.startswith(target_field_scope) and data.split(" = ")[0] == target_field_scope and metadata_set_numb == '':
            p = re.compile(r"[(](.*?)[)]", re.S)
            struct_tags = re.findall(p, data)
            metadata_set_numb = struct_tags[0].split("elements: ")[1].split(",")[0]
        if metadata_set_numb != '' and data.startswith(metadata_set_numb) and data.split(" = ")[0] == metadata_set_numb:
            p1 = re.compile(r"[{](.*?)[}]", re.S)
            fields_set = re.findall(p1, data)
            metadata_set = fields_set[0].split(", ")
            break
    
    # To get the field's indice by find its position in the metadata set.
    for n in range(0, len(metadata_set)):
        if metadata_set[n] == numb:
            return n