function multiply(a, b){
    return a * b
  }

console.log(multiply(9,10))


// /////////////////////////////////////////////
function openOrSenior(data){
// senior = 55+ and handicap 7+, otherwise, normal member
    output = []
    for (i=0; i<data.length; i++){
        const age = data[i][0]
        const handicap = data[i][1]
        if (age >= 55 && handicap >= 7){
            const status = "Senior"
            output.push(status)
        }
        else{
            const status = "Open"
            output.push(status)
            }
        }
    console.log(output)
    }

openOrSenior([[45, 12],[55,21],[19, -2],[104, 20]])
openOrSenior([[3, 12],[55,1],[91, -2],[53, 23]])
openOrSenior([[59, 12],[55,-1],[12, -2],[12, 12]])

// openOrSenior([[45, 12],[55,21],[19, -2],[104, 20]])

///////////////////////////////////////////
//ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot contain anything but exactly 4 digits or exactly 6 digits.
///////////////////////////////
function validatePIN (pin) {
    const pinLength = pin.length
    let result = false;
    if (pinLength == 4 | pinLength == 6){
        for (i=0;i<pinLength; i++){
            console.log(pin[i])
            console.log(Number.isInteger(parseInt(pin[i])))
            if (Number.isInteger(parseInt(pin[i]))){
                result = true;;
                console.log("here")
            } else{
                result = false;
                break
            }
        }
    }
    else{
        result = false;
    }
    
    console.log(result)
    return result
    
}

validatePIN("91234")

// In this kata you will create a function that takes a list of non-negative integers and strings and returns a new list with the strings filtered out.
//examples:
//filter_list([1,2,'a','b']) == [1,2]
// filter_list([1,'a','b',0,15]) == [1,0,15]
// filter_list([1,2,'aasf','1','123',123]) == [1,2,123]
function filter_list(l) {
    output_array = []
    for (i in l){
        if (Number.isInteger(l[i]) == true){
            //console.log(l[i])
            //add to new array
            output_array.push(l[i])

        }
       
    }
    console.log(output_array)
    return output_array
  }

filter_list([1,2,'a','b'])
filter_list([1,'a','b',0,15])
filter_list([1,2,'aasf','1','123',123])

// Create a function that returns the sum of the two lowest positive 
//numbers given an array of minimum 4 positive integers. 
//No floats or non-positive integers will be passed.

// For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.
// [10, 343445353, 3453445, 3453545353453] should return 3453455.
// function sumTwoSmallestNumbers(numbers) {  
//     numbers.sort(function(num1, num2)){
//         console.log(num1-num2)
//         return num1-num2
//     }

    
//   }
//   console.log(numbers)





