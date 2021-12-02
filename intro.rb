require 'bigdecimal'

#########################################
# Printing to the Console
#########################################

puts("Hello World")

puts "Hello World"

p "Hello World"

#########################################
# Declaring Variables
#########################################

this_is_a_variable = 5

p this_is_a_variable

#########################################
# Data Types
#########################################

# String
puts "Ruby"
puts 'Python'

p "string".methods

#########################################
# Data Types
#########################################

# String
puts "Ruby"
puts 'Python'

p "string".methods


# Numbers

p 55
p 55.methods

# Booleans

p true
p true.methods

### Concatenation & Interpolation

p "Hello " + "World"
hello = "Hello"
p "#{hello} World"

## Multiline
long_string = <<-EOF
sdfsfsdf
sdfsdfsf
sdfsdfsdf
sdfsdf
EOF

puts long_string

p 5 > 7
p 5 < 7
p 1 == 1 && 2 < 3

# Exercise: Print the length of the string "JavaScript", 
# then save the value trueto two variables, and make sure 
# the value of both the first variable &&the second variable 
# together evaluate to true.

string_javascript = "Javascript"

p string_javascript.length

a = true
b = true
p a == true && b == true

puts 5 / 2 #rounds
puts 122 #normal
puts 0x7a #hex value
puts 0172 #octal
puts 0b1111010 #binary
puts 23_482_345_629 #long numbers: substitute _ for ,

p 5.0 / 2 #force a float
p 5.fdiv 2 #float division
p 12.to_f #convert to float
p sprintf "%.4f" % (1/3.0) #format a value
p 1.2e-3 #scientific notation

## Big Decimal

puts BigDecimal("1.2") - BigDecimal("1.0")
puts BigDecimal("0.0000000000001")

## Rational Numbers

p 2.to_r #outputs (2/1)
p Rational 0.5 #outputs (1/2)
p 2/3r #can use fraction notation
p 2/3r+1 #can combine fraction notation with other math\\

p "auto-save test"

#nil (ruby equivalent to null)
n = nil
puts n
p nil
p n

p nil.methods

#########################################
# Collection
#########################################

## Arrays

my_arr = [1,2,3,4,5]
p my_arr

my_arr2 = Array(1...6)
p my_arr2

p "Hello World".object_id
p "Hello World".object_id

p :Hello_World.object_id
p :Hello_World.object_id

# array of hash
dogs = [
    {name: "Ruffles"},
    {name: "Spot"},
    {name: "Biff"}
]

p dogs

## Hash

original = {"name" => "Alex Merced", "age" => 35 }
slightly_better = {:name => "Alex Merced", :age => 35}
best = {name: "Alex Merced", age: 35}

p original["name"]
p best[:name]

p true.class, false.class
p "Ruby".class
p 1.class
p 4.5.class
p 3_463_456_457.class # like 3,463,456,457
p :age.class
p [1, 2, 3].class
p({ :name => "Jane", :age => 17 }.class)

## Functions/Methods

# def hello_world
#     puts "Hello World"
# end

# hello_world

def hello_you (you)
    puts "Hello! #{you}"
end

hello_you "Alex"
hello_you "Cheese"

#########################################
# Control Flow
#########################################
a = -1
if a > 1
    p 'greater than 1'
elsif a == 1
    p 'equals 1'
else
    p 'Less than 1'
end

puts 'equals 1' if a == 1
puts 'not greater than 1' unless a > 1

counter = 0
while counter < 5 do
    
    p counter
    counter += 1

end

# Loops
#########################################

counter = 0
while counter < 5 do
    
    p counter
    counter += 1

end

until counter == 0 do
    p counter
    counter -= 1

end


## For loops (iterating over iterables)

for i in 0..5
    puts i
end

for i in [1,2,3,4,5]
    puts i
end

###################
# Create an if/elsif/elseconditional that prints "too long" if a string is longer than 10 characters, "just right" if it is between 5 and 10 characters (inclusive), and "too short" if it is less than 5 characters.
# Create a loop that prints "1st time through", "2nd time through", ..., untilthe 10th time.
# Create a forloop that prints all numbers (inclusive) from 20 through 40.
###################




# 1

string_to_check = 'test56asfjhalskjfhalksfdhj'

if string_to_check.length > 10;
    p "too long"
elsif string_to_check.length > 5 && string_to_check.length < 10
        p "just right"
    else 
        p "too short"
end

while loop_number < 10;
    loop_number += 1
    p "loop number is " + loop_number.string
end

def check_length(str)
    if str.length > 10
        p ‘too long’
    elsif str.length <= 10 && str.length >= 5
        p ‘just right’
    else
        p ‘too short’
    end
end
# 2
i = 1
while i <= 10
    t = ” time through”
    if i == 1
        p “1st#{t}”
    elsif i == 2
        p “2nd#{t}”
    elsif i == 3
        p “3rd#{t}”
    else
        p “#{i}th#{t}”
    end
    i += 1
end
# 3
for num in 20...41
    p num
end