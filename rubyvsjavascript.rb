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

# Ruby

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


# Write a method that takes a number argument and returns "fizz" if the number is divisible by three, "buzz" if the number is divisible by five, and "fizzbuzz" if it's divisible by both. Here's the javascript:

# const fizzbuzzer = (x) => {
#   if( x%(3*5) == 0 ) {
#     return 'fizzbuzz'
#   } else if( x%3 == 0 ) {
#     return 'fizz'
#   } else if ( x%5 == 0 ) {
#     return 'buzz'
#   } else {
#     return 'archer'
#   }
# }

# Ruby

def fizzbuzzer(x);
    if x.modulo(3*5) == 0;
        p "fizzbuzz"
    elsif x.modulo(3) == 0;
        p "fizz"
    elsif x.modulo(5) == 0;
        p "buzz"
    else
        p "archer"
    end
end 

fizzbuzzer(1510)


# Write a method that finds the fibonacci number at the nth position and returns array until that fib num. Here is the javascript:

# const nthFibonacciNumber = () => {
#   let fibs = [1, 1];
#   let num = prompt("which fibonacci number do you want?");

#   while (fibs.length < parseInt(num)) {
#     let length = fibs.length;
#     let nextFib = fibs[length - 2] + fibs[length - 1];
#     fibs.push(nextFib);
#   }

#   alert(fibs[fibs.length - 1] + " is the fibonacci number at position " + num);
# };






