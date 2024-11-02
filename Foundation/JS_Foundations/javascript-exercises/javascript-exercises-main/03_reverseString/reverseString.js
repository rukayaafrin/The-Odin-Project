const reverseString = function(input) {
    let reversed = [];
    for (let i= input.split('').length+1; i>=0; i--){
        reversed.push(input.split('')[i])
    }
    return reversed.join("")

};



// Do not edit below this line
module.exports = reverseString;
