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
    def self.coin_in_fountaingit (fighter)
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

# create new fighter ```player = Fighter.new(name, 0,0,0, 10)```
# =>  all their stats start at 0 except life which is 10 *

# create their opponent ```Akuma = Fighter.new("Akuma", 4,4,4,10)```