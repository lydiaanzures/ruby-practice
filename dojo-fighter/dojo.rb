# EXAMPLE: copy and paste this and try it out in your own terminal

puts "Do you want to |fight| or |run|?"

input = gets.chomp #chomp trims whitespace

if input == "fight"
    puts "you are fighting"
elsif input == "run"
    puts "you are running"
end

# name
# => string : has getter no setter

# defense
# => number: has getter and setter

# strength
# => number : has getter and setter

# luck
# => number : has getter and setter

# life
# => number : has getter and setter

# ❗ *getters* are methods to get a value

# ❗ *setters* are methods to alter a value

# google: attr_accessor, attr_reader and attr_writer

# attr_accessor : https://stackoverflow.com/questions/4370960/what-is-attr-accessor-in-ruby
#attr_reader:  https://stackoverflow.com/questions/5046831/why-use-rubys-attr-accessor-attr-reader-and-attr-writer
#attr_writer: https://stackoverflow.com/questions/5046831/why-use-rubys-attr-accessor-attr-reader-and-attr-writer

# could use attr_reader if don't plan to change name, let's leave it as accessor for now
#nevermind, notes say, getter no setter, so we'll use reader
class Fighter
    # attr_accessor :name :defense : strength :luck :life
    attr_reader :name
    attr_accessor :defense, :strength, :luck, :life

    # initialize everything
    def initialize name, defense, strength, luck, life
        @name = name
        @defense = defense
        @strength = strength
        @luck = luck
        @life = life
    end


# attack(opponent)
# => function that takes `opponent` object as argument and does damage equal to strength
    def attack(opp)
        damage = @strength - opp.defense
        if damage <= 0
            puts "#{name} could not do damage to #{opp.name}"
        else
            opp.life = opp.life - damage
            puts "#{opp.name} took #{damage} now has #{opp.life} life left"
        end
    end
end

# ken = Fighter.new("Ken", 5,5,5,5)
# ryu = Fighter.new("Ryu", 7,7,7,7)

# puts ken.life
# ryu.attack(ken)
# puts ken.life


# lift_weights(fighter)
# => takes in fighter and adds 1 to strength

# endurance_training(fighter)
# => takes in fighter and adds 1 to defense

# coin_in_fountain(fighter)
# => takes in fighter and adds 1 to strength

class Dojo
    # lift_weights(fighter)
# => takes in fighter and adds 1 to strength
    def self.lift_weights(fighter)
        fighter.strength += 1
        puts "You are feeling your strength surge"
    end
    # endurance_training(fighter)
    # => takes in fighter and adds 1 to defense
    def self.endurance_training(fighter)
        fighter.defense += 1
        puts "Your endurance is growing"
    end
    # coin_in_fountain(fighter)
    # => takes in fighter and adds 1 to strength
    def self.coin_in_fountain (fighter)
        fighter.strength += 1
        puts "You are feeling your strength surge"
    end
end

ken = Fighter.new("Ken", 5,5,5,5)
ryu = Fighter.new("Ryu", 7,7,7,7)

puts ryu.strength
Dojo.lift_weights(ryu)

Dojo.endurance_training(ryu)
puts ryu.defense


# welcome player to game and ask for their name
# =>  use `gets` to get players name in variable
p "Welcome to the Dojo. What is your name?"
name = gets
p "Hello " + name
# outputs a pesky newline at end of name, according to ruby docs: https://ruby-doc.org/docs/ruby-doc-bundle/Tutorial/part_02/user_input.html
name = name.chomp
p name



# create new fighter ```player = Fighter.new(name, 0,0,0, 10)```
new_Fighter = Fighter.new("#{name}", 0,0,0,10)
p "Created new Fighter named " + name
# =>  all their stats start at 0 except life which is 10 *

# create their opponent ```Akuma = Fighter.new("Akuma", 4,4,4,10)```
akuma = Fighter.new("Akuma", 4,4,4,10)
p "Created new Opponent created Akuma"

# put a prompt telling the story and explaining the game
# create a while look that will loop `10` times
# => prompts will pause the loop and wait for the user to input a choice
    # in the while loop ask the player how they'd like to train that week
    # based on their choice invoke the right dojo function to train the player

# put a prompt telling the story and explaining the game
p "You are training at the Local Dojo for a big battle 10 weeks from now (10 turns). Each week you'll make a decision on how to train and after 10 weeks you will have a battle with your opponent."

# create a while look that will loop `10` times
week_loops = 1
# prompts will pause the loop and wait for the user to input a choice
    
while week_loops <=10
    # in the while loop ask the player how they'd like to train that week
    p "Make your training choice for Week #{week_loops}" 
    # standardize string as much as possible
    training_choice = gets.chomp.downcase 

    # if substring in string: https://www.geeksforgeeks.org/ruby-string-include-method/
    if training_choice.include? "weight"
        Dojo.lift_weights(new_Fighter)
    elsif training_choice.include? "endurance"
        Dojo.endurance_training(player_name)
    elsif training_choice.include? "luck"
        Dojo.coin_in_fountain(player_name)
    else
        puts "Silly goose. Please select amongst the Dojo options: weight training, endurance training, or luck training. Your silliness has cost you no gains this week."
    end
    week_loops += 1
end

# after the previous while loop create prompt explaining the big battle has arrived
p "The big battle has arrived."
# create an infinite loop (while true)
# have the player and their opponent take turns attacking each other
# at the end of each loop check the life of both fighters
# if one is at 0 or below, break the loop and declare the survivor the winner
while true
    new_Fighter.attack(akuma)
    akuma.attack(new_Fighter)

    if new_Fighter.life <= 0
        puts "Akuma has won the battle!"
        break
    end

    if akuma.life <= 0
        puts "#{new_Fighter.name} has won the battle!"
        break
    end
end


