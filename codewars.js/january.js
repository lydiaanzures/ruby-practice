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