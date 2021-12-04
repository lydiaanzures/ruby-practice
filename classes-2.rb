# ## Class Define
# class Person
#     ## Constructor

#     attr_reader :age
#     attr_writer :age
#     attr_accessor :hair_color

#     def initialize (name, age, hair_color)
#         @name = name
#         @age = age
#         @hair_color = hair_color
#         @children = []
#     end

#     def new_child(name)
#         @children << Person.new(name, 0, @hair_color)
#     end

#     def list_children()
#         @children.each {|c| p c}
#     end

#     def eat
#         puts "I eat"
#     end

#     def sleep
#         puts "I sleep"
#     end

#     ## Getter Method
#     def name
#         @name
#     end

#     ## Setter Method
#     def name=value
#         @name = value
#     end
# end

# ## Instantiate (Create an Object)

# alex = Person.new("Alex", 36, "black")

# p alex
# p alex.name
# alex.name = "Hector"
# p alex.name
# p alex.age
# alex.age += 1
# p alex.age

# p alex.hair_color
# alex.hair_color = "Purple"
# p alex.hair_color

# alex.new_child("Thing 1")
# alex.new_child("Thing 2")
# alex.list_children

# alex.eat
# alex.sleep


# class Animal

#     attr_accessor :legs, :arms

#     def initialize(legs, arms, sound)
#         @legs = legs
#         @arms = arms
#         @sound = sound
#     end

#     def make_sound
#         puts @sound
#     end

# end

## Child Class Cow that Inherits from Animal
# class Cow < Animal

#     attr_accessor :name

#     def initialize(name)
#         ## call the parent/super classes initialize
#         super(4, 0, "Moo")
#         @name = name
#     end

#     def milk()
#         return {item: "Milk"}
#     end

# end

# bessie = Cow.new("Bessie")

# bessie.make_sound
# p bessie.name
# milk = bessie.milk
# puts milk


## Create a Singleton (I only need one)
## Calculator
## Class Methods and Properties


class Calculator

    @@result = nil

    def self.calculate(num1, num2, operator)
        if operator == "+"
            @@result = num1 + num2
        elsif operator == "-"
            @@result = num1 - num2
        elsif operator == "*"
            @@result = num1 * num2
        elsif operator == "/"
            @@result = num1 / num2
        else
            puts "don't recognize operator"
        end
    end

    def Calculator.get_result
        return @@result
    end

    def Calculator.example
        puts "This is a class method"
    end

    def instance_method
        puts "this is an instance method"
    end

end

Calculator.example

Calculator.calculate(2,2,"+")
p Calculator.get_result

Calculator.calculate(2,2,"-")
p Calculator.get_result

Calculator.calculate(2,2,"*")
p Calculator.get_result

Calculator.calculate(2,2,"/")
p Calculator.get_result

### Named/Keyword Arguments
def print_word(word:, word2:)
    puts word
    puts word2
end


print_word word2:"cheese", word: "Hello"

### Default Arguments
def add_nums num=0, num2=0
    return num + num2
end

p add_nums(1,2) #1+2=3
p add_nums #0+0=0