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




