p "Hello World".upcase

p "Hello World".class

p String.class

# ## Class Define
# class Person


#     def eat
#         puts "I eat"
#     end

#     def sleep
#         puts "I sleep"
#     end
# end

# ## Instantiate (Create an Object)

# alex = Person.new

# alex.eat
# alex.sleep

## Class Define
class Person
    ## Constructor

    attr_reader :age
    attr_writer :age
    attr_accessor :hair_color

    def initialize (name, age, hair_color)
        @name = name
        @age = age
        @hair_color = hair_color

    end

    def eat
        puts "I eat"
    end

    def sleep
        puts "I sleep"
    end

    ## Getter Method
    def name
        @name
    end

    ## Setter Method
    def name=value
        @name = value
    end
    def initialize (name, age, hair_color)
        @name = name
        @age = age
        @hair_color = hair_color
        @children = []
    end
    
    def new_child(name)
        @children << Person.new(name, 0, @hair_color)
    end
    
    def list_children()
        @children.each {|c| p c}
    end
end

## Instantiate (Create an Object)

alex = Person.new("Alex", 36, "black")

p alex

alex.eat
alex.sleep

p alex.name

p alex.hair_color
alex.hair_color = "Purple"
p alex.hair_color

alex.new_child("Thing 1")
alex.new_child("Thing 2")
alex.list_children



class Pig
    attr_accessor :name, :tail

    def initialize(name)
        @name = name
        @tail = "curly"
    end

    def greeting
        puts "Oink oink"
    end

    def runs_around
        puts "#{@name} is frolicking around in the pastures"
    end
end

pinkie = Pig.new("Pinkie")

puts pinkie.runs_around

   