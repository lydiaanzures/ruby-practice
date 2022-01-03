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

ken = Fighter.new("Ken", 5,5,5,5)
ryu = Fighter.new("Ryu", 7,7,7,7)

puts ken.life
ryu.attack(ken)
puts ken.life