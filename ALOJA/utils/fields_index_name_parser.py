#!/usr/bin/env python3

import re

class FieldParser:

  def __init__(self, fname, sname):
    self.fname = fname
    if '.' in sname:
      self.sname = sname.split('.')[0]
    else:
      self.sname = sname
    return

  def getFieldsIndexAndName(self):
    field_map = {}

    with open(self.fname, 'r') as f:
      # Get the fields' indices and names from the sliced bitcode.
      datas = f.readlines()
      target = "\\b" + self.sname + "\\b" # target is the struct we want to find.
      struct_symbol = "\\bDW_TAG_structure_type\\b" # struct_symbol is an additional symbol to help locate struct metadata.
      another_struct_symbol = "\\DW_TAG_typedef\\b" # another_struct_symbol is an additional symbol to help locate struct metadata.
      baseType = "\\bbaseType\\b" # baseType is an additional symbol to help locate struct metadata.
      elements = "\\belements\\b" # elemenets is a symbol to help locate the named metadata.
      named_metadata = [] # named_metadata[1] will be the named metadata.
      based_metadata = [] # based_metadata[1] will be the based metadata.
      fields = [] # fields will contain different fields' metedata name contained by target struct.
      index_name = [] # index_name is final output, contain each field's index and name. The format of each item in index_name is [index, name]
      
      # for data in datas:
      for i in range(len(datas)):
        # This part of code is to find the struct's metadata and get the named metadata which contains all fields of the struct.
        if datas[i].startswith("!") and re.search(target, datas[i]) and re.search(struct_symbol, datas[i]) and len(named_metadata) == 0:
          p = re.compile(r"[(](.*?)[)]", re.S)
          struct_tags = re.findall(p, datas[i])
          tags_items = struct_tags[0].split(", ")
          for tags_item in tags_items:
            if re.search(elements, tags_item):
              named_metadata = tags_item.split(": ")
              break
      
      if len(named_metadata) == 0:
        for i in range(len(datas)):
          if datas[i].startswith("!") and re.search(target, datas[i]) and re.search(another_struct_symbol, datas[i]):
            p = re.compile(r"[(](.*?)[)]", re.S)
            struct_tags = re.findall(p, datas[i])
            tags_items = struct_tags[0].split(", ")
            for tags_item in tags_items:
              if re.search(baseType, tags_item):
                based_metadata = tags_item.split(": ")
                break
            break
        for i in range(len(datas)):
          if datas[i].startswith(based_metadata[1]) and re.search(struct_symbol, datas[i]):
            p = re.compile(r"[(](.*?)[)]", re.S)
            struct_tags = re.findall(p, datas[i])
            tags_items = struct_tags[0].split(", ")
            for tags_item in tags_items:
              if re.search(elements, tags_item):
                named_metadata = tags_item.split(": ")
                break
            break
      
      for i in range(len(datas)):
        # This part of code is to find all fields' metadatas.
        if len(named_metadata) > 0 and len(fields) == 0:
          if datas[i].startswith(named_metadata[1]):
            p1 = re.compile(r"[{](.*?)[}]", re.S)
            fields_set = re.findall(p1, datas[i])
            fields = fields_set[0].split(", ")
            break
          
      for i in range(len(datas)):
        # This part of code is to find all fields' index and name.
        if len(fields) > 0:
          index = -1
          for field in fields:
            index += 1
            if datas[i].startswith(field):
              temp = [] # temp is used to temporarily contain index and name.
              temp.append(index)
              p2 = re.compile(r"[\"](.*?)[\"]", re.S)
              name = re.findall(p2, datas[i])
              # print(datas[i])
              if not name:
                name = re.findall(p2, datas[i+1])

              temp.append(name[0])
              #print(temp)
              index_name.append(temp)
              field_map[index] = name[0]
              break
        if len(fields) > 0 and len(index_name) == len(fields):
          break
    
    return field_map

  def getFieldsIndexAndName_wakaama(self):
    field_map = {}

    with open(self.fname, 'r') as f:
      # Get the fields' indices and names from the sliced bitcode.
      datas = f.readlines()
      target = "\\b" + self.sname + "\\b" # target is the struct we want to find.
      type_symbol = "\\bDW_TAG_typedef\\b"
      basetype = "\\bbaseType\\b"
      basetype_meta = ''
      struct_symbol = "\\bDW_TAG_structure_type\\b" # struct_symbol is an additional symbol to help locate struct metadata.
      elements = "\\belements\\b" # elemenets is a symbol to help locate the named metadata.
      named_metadata = [] # named_metadata[1] will be the named metadata.
      fields = [] # fields will contain different fields' metedata name contained by target struct.
      index_name = [] # index_name is final output, contain each field's index and name. The format of each item in index_name is [index, name]
      
      # for data in datas:
      for i in range(len(datas)):
        
        # This part of code is to find the struct's metadata and get the named metadata which contains all fields of the struct.
        if datas[i].startswith("!") and re.search(target, datas[i]) and re.search(type_symbol, datas[i]) and len(named_metadata) == 0:
          # print(datas[i])
          # print(self.sname)
          p = re.compile(r"[(](.*?)[)]", re.S)
          struct_tags = re.findall(p, datas[i])
          tags_items = struct_tags[0].split(", ")
          for tags_item in tags_items:
            if re.search(basetype, tags_item):
              basetype_meta = tags_item.split(": ")[1]
              # print(basetype_meta)
              break
          break
      
      for i in range(len(datas)):
        if datas[i].startswith(basetype_meta) and re.search(struct_symbol, datas[i]):
          # print(datas[i])
          p = re.compile(r"[(](.*?)[)]", re.S)
          struct_tags = re.findall(p, datas[i])
          tags_items = struct_tags[0].split(", ")
          for tags_item in tags_items:
            if re.search(elements, tags_item):
              named_metadata = tags_item.split(": ")
              break
          break

        # This part of code is to find all fields' metadatas.
      for i in range(len(datas)):
        if len(named_metadata) > 0 and len(fields) == 0:
          if datas[i].startswith(named_metadata[1]):
            p1 = re.compile(r"[{](.*?)[}]", re.S)
            fields_set = re.findall(p1, datas[i])
            fields = fields_set[0].split(", ")
            continue
          
        # This part of code is to find all fields' index and name.
        if len(fields) > 0:
          index = -1
          for field in fields:
            index += 1
            if datas[i].startswith(field):
              temp = [] # temp is used to temporarily contain index and name.
              temp.append(index)
              p2 = re.compile(r"[\"](.*?)[\"]", re.S)
              name = re.findall(p2, datas[i])
              # print(datas[i])
              if not name:
                name = re.findall(p2, datas[i+1])

              temp.append(name[0])
              #print(temp)
              index_name.append(temp)
              field_map[index] = name[0]
              break
        if len(fields) > 0 and len(index_name) == len(fields):
          break
    
    return field_map