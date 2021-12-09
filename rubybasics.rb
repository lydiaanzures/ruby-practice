# 1. Hello World
p "Hello World"


# 2. Interpolate the adjective variable into the Hello World string using #{}

adjective = "Big Bad"

p "Hello #{adjective} World"

# 3. Save "Hello World" to a variable. 
# Without changing the letters in your code manually, 
# permanently change "Hello World" to all uppercased letters

hello = "Hello World"

# found two immediate ways using linked ruby docs: 
# using upcase first:
p hello.upcase

# want to also try with a loop and a method!
def capitalize_string (string)
    capital_greeting = ''
    string.each_char do |letter|
        uppercase = letter.capitalize
        capital_greeting += uppercase
        
    end
    p capital_greeting
end

# call method with parameter - very cool!
capitalize_string hello 


##########################
# Nums Array and Enumerables
##########################
nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]

# Use .uniqto print the array with all duplicate entries removed
# p nums.uniq

# use .pushand .pop, .shift.unshiftand .lengthon the array as you would with javaScript (if you need to add a number, add 5)
p nums.push(5) #adds 5 to the end of an array
p nums.pop(1) #returns the removed elements, this will return the last num in array
p nums.pop(5) #this will return the last 5 nums in array
p nums.shift(5) #this will return the first 5 nums in array, if we print the array, these will be missing
p nums
p nums.unshift(5) #will add number 5 to front of array
p nums.length()

# Use .include?to check if the array contains the number 8
p nums.include? 8 #should output false

# Use .find_allto find all the numbers greater than 10
p nums.find_all{ |obj| obj > 10 }

# use .all?to check if all the numbers are greater than 0?
p nums.all?{ |num| num>0} #there are zeros so should output false

# use any?to check if there are any numbers that are divisible by 8
p nums
p nums.any? {|num| num%8==0} #prints true, but I don't see any multiple of 8, why? will write a function to print the numbers it's matching to being divisible by 8

# let's figure out which numbers in num are supposedly divisible by 8
def check_divisible (array)
    array.each do |number| 
        if number%8==0;
            p number
        end    
    end
end

check_divisible(nums)
# okay, the three "0" numbers do have remainders of 0, since 0/8 does == 0
# so technically that's true, but let me see if I can exclude zeros and still use if any?
p nums.any? {|num| num%8==0 && num>0} #returns false, woo!

# use .countto let you know how many numbers are greater than 4
p nums.count { |num| num>4} #printing 9! for fun let's print out which ones are greater than 4
def check_greater_than_four (array)
    array.each do |number| 
        if number>4;
            p number
        end    
    end
end
p nums
check_greater_than_four(nums)

# use .each_with_index to print each item times its index
nums.each_with_index do | number, index |
    p "#{index} plus #{number} is " + (index * number).to_s
  end

#   .findthe number that is divisible by 7 and 5 and is greater than 0
p nums.find  { |num| num%7==0 && num%5==0 and num>0}

# .find_indexof the number that is divisible by 5 and 7 and is greater than 0
p nums.find_index {|num| num%35==0 && num>5}

# return the .first3 numbers
p nums.first(3)

# return the .last5 numbers
p nums.last(5)

# .group_bythe modulo of 3 ( % 3)
p nums.group_by{|num| num%3==0} #groups into true and false groups!

# use minmaxto return the smallest and largest number
p nums.minmax

# use .rejectto return all the numbers that are NOT divisible by 3
p nums.reject {|num| num%3 != 0}

# use .selectto return all the numbers divisible by 5
p nums.select{|num| num%5==0}


###################
#COLOR ARRAY
###################

colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

# Print out a random color.
p colors.sample

# Print out the colorsarray in reverse order.
p colors.reverse

# Print out all of the colors in the array with all capital letters.
colors.each {|color| p color.upcase } #prints out each color capitalized

# here's an option that prints out the array itself all capitalized
def capitalize_array(array)
    new_array = []
    array.each {|color| 
        new_array.push(color.upcase)
    }
    p new_array
end

capitalize_array(colors)


########################
#Methods
########################
# Write a method named find_areathat 
# finds the area of a rectangle when given values for width and height
def find_area height, width
    p width*height
end

find_area 2, 4


# Write a method named multiply_each_by_fivethat will loop over the 
# given numsarray below and print each number multiplied by 5
nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]

def multiply_each_by_five arr
    multiplied_by_five_array = []
    arr.each {|num|
        p num*5
        multiplied_by_five_array.push(num*5)
    }
    p multiplied_by_five_array
    
end

multiply_each_by_five(nums) #printing both a new array of everything multiplied by 5 and each new number too

########
#Methods with a Hash
########
# Use the following given hashes to solve the problems below
# Hashes

book = {
  title: 'The Great Gatsby',
  author: 'F Scott Fitzgerald',
  year: 1925,
  price: 10
}

lamp = {
  type: 'reading',
  brand: 'Ikea',
  price: 25
}

table = {
  type: 'bed side',
  brand: 'Crate & Barrel',
  color: 'birch',
  price: 50
}

# Write a method named print_pricethat will take in any hash and return the price of the item.
def print_price hash
    p hash[:price]
end 

print_price book
print_price lamp
print_price table

# Write a method named print_item_sumsthat will take in two hashes and will return the sum of the prices for the items in the hashes.
def print_item_sums(hash1, hash2)
    p hash1[:price] + hash2[:price]
end 

print_item_sums book, table

# Solving Problems with Ruby
# Euler Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.
def euler_problem(max)
    # first find all multiples of 3 or 5 below 1000
    n = 1
    running_total_sum = 0
    while n < max
        if n%15==0;
            running_total_sum += n
            
        end
        n += 1
            
    end
    p running_total_sum
end 

euler_problem(1000)

# #####Primes
# Write a method called check_prime?that will test whether a number is Prime. The method will return true if Prime, false if not.

# check that I can use the prime method
require 'prime'
p 7.prime?

# write method
def check_prime number
    p number.prime?
    return number.prime?
end

check_prime 17

# Write another method called get_primesthat will print all the Primes up to an arbitrary limit. For example, if you invoke your method with get_primes 100, it will print all the Prime numbers up to and including 100.
def get_primes max
    i = 0
    while i < max
        if i.prime? == true;
            p i
        end
        i += 1
    end
end

# get_primes 100

# This method can call on the previous check_prime? method.
def get_primes_with_callback max
    i = 0
    while i < max
        check_prime i
        i += 1
    end
end

get_primes_with_callback 100




