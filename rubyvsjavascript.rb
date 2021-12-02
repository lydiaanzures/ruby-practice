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

# Ruby version
def swapEm(a, b);
    new_a = b.to_s
    new_b = a.to_s

    a = new_a
    b = new_b
    p "a is now " + a + ", and b is now " + b
end 

swapEm("1","2")
swapEm(1,2)

# Write a method that multiplies all numbers in a given array and returns the final product. Here's the javascript:

# const multiplyArray = (ary) => {
#   if (ary.length == 0) { return 1; };

#   let total = 1;
#   // let total = ary[0];

#   for (let i=0; i < ary.length; i++) {
#     total = total * ary[i];
#   };

#   return total;
# };

def multiplyArray(array)
    total = 1
    if array.length==0;
        p total
    else
        for number in array;
            total = total*number
            # p total

        end
    end 
    p total
end

multiplyArray([1,2,3,45,54,65])

