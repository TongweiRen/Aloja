#!/usr/bin/env python3

def main():
    all_functions = []
    with open("../mosquitto.bc-functions.txt", 'r') as f:
        all_functions = f.readlines()
    
    new_functions = []
    with open("../mosquitto_sub.sliced.bc-functions.txt", 'r') as f:
    # with open("../mosquitto.sliced_write.ll-functions.txt", 'r') as f:
        new_functions = f.readlines()
    
    delete_functions = []
    for item in all_functions:
        if item not in new_functions:
            delete_functions.append(item)
    
    for item in delete_functions:
        print(f"[+] {item[0:-1]}")

if __name__ == "__main__":
    main()