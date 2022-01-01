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