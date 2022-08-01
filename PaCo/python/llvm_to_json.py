#!/usr/bin/env python3

from itertools import islice
import argparse
import json
import sys

from fields_index_name_parser import FieldParser

def makeFullMap(inFile, mapping, struct):
    f = open(inFile, 'r')
    irObj = {}
    while True:
        line = f.readline()
        if not line:
            break
        
        if line.startswith("[+] Instruction: ") and struct in line:
            instr = line.split("[+] Instruction: ")[1].strip()
            # If there are only 2 operands, it doesn't apply. Hence the hard-coding.
            operands = list(islice(f, 3))[2].strip()
            field = operands.split()[-1]
            # The following will fail if only 2 operands.
            try:
                pFunc = list(islice(f, 1))[0].strip()
                parentFunc = pFunc.split("[+] Parent function: ")[1]
                fieldName = ""
            except IndexError:
                # print(f"[-] Skipping instruction with wrong number of operands")
                continue

            try:
                fieldName = mapping[int(field)]
            except (KeyError, ValueError):
                # print(f"[-] Key: {field} does not exist in metadata.")
                continue

            irObj[instr] = {'field': field, 'field_name': fieldName, 'parent_function': parentFunc}
    return irObj

def makeSimpleMap(inFile, mapping, struct):
    print("[-] TODO")

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Utility for generating JSON file with function->field mappings")
    parser.add_argument("metadata", type=str, help="Bitcode to parse metadata from")
    parser.add_argument("slice", type=str, help="Input slice from LLVM pass")
    parser.add_argument("struct", type=str, help="Name of struct to target")
    parser.add_argument("output", type=str, help="Output mapping file")
    args = parser.parse_args()

    sliceFile = args.slice

    struct = args.struct

    outJson = args.output + '.json'

    inFile = args.metadata
    fParser = FieldParser(inFile, struct)
    mapping = fParser.getFieldsIndexAndName()

    print(f"[+] Using mapping from metadata: {mapping}")

    fMap = makeFullMap(sliceFile, mapping, struct)
    #sMap = makeSimpleMap(sliceFile, mapping, struct)

    with open(outJson, 'w') as of:
        json.dump(fMap, of, ensure_ascii=False, indent=4)
    
    of.close()
    sys.exit(0)