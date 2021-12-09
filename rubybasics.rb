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


#         p color.upcase
# end


