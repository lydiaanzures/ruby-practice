# comparing Ruby against Javascript!

# method that accepts a name from the use and then returns it

# javascript would look like this
 
# const getName = () => {
#     let name = prompt("What is your name?");
#     return name;
# };

# Ruby

# def getName()
#     p "What is your name?"
#     name = gets
#     puts "Hello #{name}"
# end

# getName()

#Write a method that reverses a string

# #Javascript
# const reverseIt = () => {
#     let string = "a man, a plan, a canal, frenemies!";
#     let reverse = "";
#     for (let i = 0; i < string.length; i++){
#         reverse += string[string.length - (i+1)];
#     };
#     alert(reverse);
# };

#Ruby version
def reverseIt(string);
    characters = string.split('')
    # p characters
    index = 0;
    reversed_string = ""
    for character in characters;
        reversed_string += characters[characters.length-(index+1)]
        index+=1
    end 
    p reversed_string
end 

reverseIt("hello world")

# Write a method that swaps the values of two variables around. Here's the javascript:
# const swapEm = () => {
#   let a = 10;
#   let b = 30;
#   let temp;

#   temp = b;
#   b = a;
#   a = temp;

#   alert("a is now " + a + ", and b is now " + b);
# };

