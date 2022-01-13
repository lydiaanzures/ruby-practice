def find_smallest_int(arr):
    arr.sort()
    return arr[0]

def positive_sum(arr):
    running_sum = 0
    for num in arr:
        if num >= 0:
            running_sum += num
    return running_sum

def basic_op(operator, value1, value2):
    if operator == '+':
        result = value1 + value2
    if operator == '-':
        result = value1 - value2
    if operator == '*':
        result = value1 * value2
    if operator == '/':
        result = value1 / value2
    return result

import math
def litres(time):
    # print int(math.floor(time * 0.5))
    return int(math.floor(time * 0.5))

def convert_to_list(num):
    new_list = []
    new_list[:] = str(num)
    # print(new_list)
    return new_list
convert_to_list(1234)


def sort_desc(arr):
    arr.sort(reverse=True)
    print(arr)
    return arr.sort(reverse=True)

# sort_desc(['6', '2', '3', '4'])

def string_to_descending_order(num):
    # Bust a move right here
    return 0