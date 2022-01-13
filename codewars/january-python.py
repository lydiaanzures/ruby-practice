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
    arr = []
    arr[:] = str(num)
    arr.sort(reverse=True)
    return arr

string_to_descending_order(5281923)



array = [True,  True,  True,  False,
  True,  True,  True,  True ,
  True,  False, True,  False,
  True,  False, False, True ,
  True,  True,  True,  True ,
  False, False, True,  True]

count = 0
for sheep in array:
    if sheep == True:
        count += 1
print(count)

def count_sheeps(sheep):
    count = 0
    for sheepling in sheep:
        if sheepling == True:
            count += 1
    return count

string = 'bitcoin take over the world maybe who knows perhaps'
# new_string = string.split(" ")
# print(len(min(string.split(" "), key = len)))

def find_short(s):
    return len(min(s.split(" "), key = len))

# square every digit of a number and concatenate them.
# def square_digits(num):

#     pass
num = 9119
new_list = []
new_num = ''
new_list[:] = str(num)
for i in new_list:
    new_num += str(int(i)**2)
    # print(new_num)


