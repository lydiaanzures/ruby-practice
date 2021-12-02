# comparing Ruby against Javascript!

# method that accepts a name from the use and then returns it

# javascript would look like this
 
# const getName = () => {
#     let name = prompt("What is your name?");
#     return name;
# };

# Ruby
def getName()
    p "What is your name?"
    name = gets
    puts "Hello #{name}"
end

getName()