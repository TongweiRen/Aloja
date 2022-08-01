#!/usr/bin/env python3

import sys
import os
import time
import argparse
from pathlib import Path
from rich.console import Console
console = Console()

wdir = os.getcwd()
sys.path.append(wdir + "/parser/int32")
sys.path.append(wdir + "/constructor/int32")

# Server-side mutation libs.
from insert_wrapper_function_int32 import InsertWrapperStruct
from read_wrapper_int32 import InsertReadWrapperCall
from insert_field_value_reverse_function_int32 import InsertFieldValueReverseFunction
from field_value_reverse_setting_int32 import InsertReverseFieldValueCall
from insert_decrypt_function_int32 import InsertDecryptFunction
from decryption_setting_handler_int32 import InsertDecFieldCall

# Client-side mutation libs.
from insert_field_value_change_int32 import ChangeFieldValue
from insert_encrypt_function_int32 import InsertEncryptFunction
from encryption_setting_handler_int32 import InsertEncFunctionCall


def insert_wrapper(inIR, outIR, struct, field, index, ParserFunction):
    # No need to intermediate file here.
    test = InsertWrapperStruct(inIR, outIR)
    temp_data = test.insertWrapperStruct()
    test.insertWrapperFunction(temp_data)

    test = InsertReadWrapperCall(outIR, outIR, struct, field, index, ParserFunction)
    test.insertReadWrapperCall()

def insert_nonce_server(outIR):
    # First, insert the nonce verify functions in the server end.
    server_invf = InsertFieldValueReverseFunction(outIR, outIR)
    server_invf.insertFieldValueReverseFunction()

    server_irfc = InsertReverseFieldValueCall(outIR, outIR)
    server_irfc.insertReverseFieldValueCall()

    # print(f"[+] Created server with static value mutations at: {outIR}")

def insert_nonce_client(inIR, outIR, struct, field, index, ConstructorFunction):
    test = ChangeFieldValue(inIR, outIR, struct, field, index, ConstructorFunction)
    temp_data1 = test.insertStructAndNonce()
    temp_data2 = test.insertChangeFieldValue(temp_data1)
    test.insertFunctionCall(temp_data2)

    # print(f"[+] Created client with static value mutations at: {outIR}")

def insert_decryption_server(outIR):
    server_dec = InsertDecryptFunction(outIR, outIR)
    server_dec.insertDecryptFunction()

    server_handler = InsertDecFieldCall(outIR, outIR)
    server_handler.insertFieldCall()

    # print(f"[+] Created server with encryption-based mutation at: {outIR}")

def insert_encryption_client(inIR, outIR, struct, field, index, ConstructorFunction):
    client_enc = InsertEncryptFunction(inIR, outIR)
    temp_datas = client_enc.insertWrapperStruct()
    client_enc.insertEncryptFunction(temp_datas)

    client_handler = InsertEncFunctionCall(inIR, outIR, struct, field, index, ConstructorFunction)
    client_handler.insertFunctionCall()

    # print(f"[+] Created client with encryption-based mutation at: {outIR}")

if __name__ == "__main__":

    start = time.time()

    parser = argparse.ArgumentParser(description="Aloja: creating mutations in mapped functions for a given LLVM project")
    parser.add_argument("-server", "--server", type=str, help="Input server bitcode")
    parser.add_argument("-client", "--client", type=str, help="Input client bitcode")
    parser.add_argument("-struct", "--struct", help="The struct including the target field")
    parser.add_argument("-field", "--field", help="The target struct field wanting to mutate")
    parser.add_argument("-index", "--index", help="The index of target struct field")
    parser.add_argument("-PF", "--ParserFunction", help="The parser function in the server side that the user wants to mutate")
    parser.add_argument("-CF", "--ConstructorFunction", help="The constructor function in the client side that the user wants to mutate")
    parser.add_argument("-n", "--nonce", help="Mutation to change field value", action="store_true")
    parser.add_argument("-e", "--encrypt", help="Mutation to encrypt a field", action="store_true")
    args = parser.parse_args()

    # Server bitcode.
    in_file_server = args.server
    s_basename = Path(in_file_server).stem

    # Client bitcode.
    in_file_client = args.client
    c_basename = Path(in_file_client).stem

    # Regardless of the mutation, we need to insert a wrapper in the server.
    out_file_server = f"mutants/{s_basename}_mutated.ll"
    out_file_client = f"mutants/{c_basename}_mutated.ll"

    # console.print("[+] Creating int32 mutations...")

    # Insert wrapper struct(s) into server.
    insert_wrapper(in_file_server, out_file_server, args.struct, args.field, int(args.index), args.ParserFunction)

    # Inser nonce and verify.
    if args.nonce and args.encrypt:
        # Server mutations.
        insert_decryption_server(out_file_server)
        insert_nonce_server(out_file_server)
        # Client mutations.
        insert_encryption_client(in_file_client, out_file_client, args.struct, args.field, int(args.index), args.ConstructorFunction)
        insert_nonce_client(out_file_client, out_file_client, args.struct, args.field, int(args.index), args.ConstructorFunction)
        
        end = time.time()
        # print(f"\n[+] The running time of Aloja Mutation is {end-start}\n")
        sys.exit(0)
    
    # Insert nonce/verify.
    if args.nonce:
        # Server mutations.
        insert_nonce_server(out_file_server)
        # Client mutations.
        insert_nonce_client(in_file_client, out_file_client, args.struct, args.field, int(args.index), args.ConstructorFunction)
    
    if args.encrypt:
        # Server mutations.
        insert_decryption_server(out_file_server)
        # Client mutations.
        insert_encryption_client(in_file_client, out_file_client, args.struct, args.field, int(args.index), args.ConstructorFunction)

    end = time.time()
    # print(f"\n[+] The running time of Aloja Mutation is {end-start}s\n")
    sys.exit(0)