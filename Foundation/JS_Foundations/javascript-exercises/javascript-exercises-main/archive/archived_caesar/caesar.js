const caesar = function (string, shift) {
    const lowerCaseAlpha = "abcdefghijklmnopqrstuvwxyz";
    const newString = string.toLowerCase();
    const stringArray = newString.split("");
    const newArray = [];
    const result = [];
    
    stringArray.forEach((element, index) => {
        if (lowerCaseAlpha.includes(element)) {
            const shiftedIndex = (lowerCaseAlpha.indexOf(element) + shift) % 26;
            newArray.push(shiftedIndex < 0 ? shiftedIndex + 26 : shiftedIndex);
        } else {
            newArray.push(element);
        }
    });
    
    newArray.forEach((element, index) => {
        if (Number.isInteger(element)) {
            const shiftedChar = lowerCaseAlpha.charAt(element);
            result.push(string[index] === string[index].toUpperCase() ? shiftedChar.toUpperCase() : shiftedChar);
        } else {
            result.push(element);
        }
    });
    return result.join("");


};

// Do not edit below this line
module.exports = caesar;
