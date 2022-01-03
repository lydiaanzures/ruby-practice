# EXAMPLE: copy and paste this and try it out in your own terminal

puts "Do you want to |fight| or |run|?"

input = gets.chomp #chomp trims whitespace

if input == "fight"
    puts "you are fighting"
elsif input == "run"
    puts "you are running"
end