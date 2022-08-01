#!/usr/bin/env python3

import re

# Update each remained numbers, including %numbers and block numbers.
# lower_bounder will make sure some numbers that are lower than out added numbers won't be changed.
# Eg. the new number we start to add is %50, then for all reamined numbers which are larger than 50 shoule be changed, like 60 -> (60 + increase_number).
# But we cannot change %49, since it's set before the new number.
# Unless %49 refers to a value, and %50 is an instruction that changes this value, and we want all remained places use this new value,
# then we need to change %49 too, 49 -> (49 + increase_number), like what we did in insert_instructions(setting).py

def update_other_instructions(target_function_contents, changes_start_indx, increase_number, lower_bounder):
    for n in range(0, len(target_function_contents)):
        if target_function_contents[n][0].isdigit():
            a = target_function_contents[n].split(":")
            if int(a[0]) > lower_bounder:
                target_function_contents[n] = str(int(a[0]) + increase_number) + ":" + a[1]
        # else:
        #     updating = update_number(target_function_contents[n], lower_bounder, increase_number)
        #     # print(updating)
        #     target_function_contents[n] = updating
    for n in range(0, changes_start_indx):
        updating = update_number(target_function_contents[n], lower_bounder, increase_number)
        target_function_contents[n] = updating

    for n in range(changes_start_indx, len(target_function_contents)):
        if lower_bounder == 0:
            updating = update_number(target_function_contents[n], lower_bounder, increase_number)
            target_function_contents[n] = updating
        else:
            updating = update_number(target_function_contents[n], lower_bounder - 1, increase_number)
            # print(updating)
            # if '%181 = load i64, i64* %18, align 8, !dbg !29699,' in target_function_contents[n]:
            #     # print(target_function_contents[n])
            #     # print(updating)
            #     # print(increase_number)
            #     print(update_number_debug(target_function_contents[n], lower_bounder - 1, increase_number))
            target_function_contents[n] = updating

    return target_function_contents


def update_number(s, lower_bounder, increase_number):
    num = {'0': 0, '1': 0, '2': 0, '3': 0, '4' : 0, '5' : 0, '6' : 0, '7': 0, '8': 0, '9': 0}

    to_replace = []
    for i in range(len(s)):
        if s[i] == '%':
            target = '%'
            number = ''
            for j in range(i+1, len(s)):
                if s[j] not in num:
                    break
                else:
                    target += s[j]
                    number += s[j]
            if len(target) > 1 and int(number) > lower_bounder:
                to_replace.append(target)

    # print(to_replace)
    int_to_replace = []
    replace = []

    for i in range(len(to_replace)):
        int_to_replace.append(int(to_replace[i][1:]))
        # replace.append('%' + str(int(to_replace[i][1:]) + 1))

    int_to_replace.sort(reverse=True)
    # print(int_to_replace)

    for i in range(len(to_replace)):
        to_replace[i] = '%' + str(int_to_replace[i])
    # print(to_replace)

    for i in range(len(to_replace)):
        int_to_replace.append(int(to_replace[i][1:]))
        replace.append('%' + str(int(to_replace[i][1:]) + increase_number))

    for i in range(len(to_replace)):
        to_replace[i] = f'{to_replace[i]}\\b'
        s = s.replace(to_replace[i], replace[i])
        s = re.sub(to_replace[i], replace[i], s)

    return s


def update_number_debug(s, lower_bounder, increase_number):
    num = {'0': 0, '1': 0, '2': 0, '3': 0, '4' : 0, '5' : 0, '6' : 0, '7': 0, '8': 0, '9': 0}

    to_replace = []
    for i in range(len(s)):
        if s[i] == '%':
            target = '%'
            number = ''
            for j in range(i+1, len(s)):
                if s[j] not in num:
                    break
                else:
                    target += s[j]
                    number += s[j]
            if len(target) > 1 and int(number) > lower_bounder:
                to_replace.append(target)

    print(to_replace)
    int_to_replace = []
    replace = []

    for i in range(len(to_replace)):
        int_to_replace.append(int(to_replace[i][1:]))
        # replace.append('%' + str(int(to_replace[i][1:]) + 1))

    int_to_replace.sort(reverse=True)
    print(int_to_replace)

    for i in range(len(to_replace)):
        to_replace[i] = '%' + str(int_to_replace[i])
    print(to_replace)

    for i in range(len(to_replace)):
        int_to_replace.append(int(to_replace[i][1:]))
        replace.append('%' + str(int(to_replace[i][1:]) + increase_number))
    print(replace)

    print(s)
    for i in range(len(to_replace)):
        to_replace[i] = f'{to_replace[i]}\\b'
        print(to_replace[i])
        print(replace[i])
        # s = s.replace(to_replace[i], replace[i])
        s = re.sub(to_replace[i], replace[i], s)
    print(s)

    return s