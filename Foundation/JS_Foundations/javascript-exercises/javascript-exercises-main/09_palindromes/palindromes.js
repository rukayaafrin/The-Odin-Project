const palindromes = function (string) {
    const newString = string
                    .replaceAll(" ", "")
                    .replace(/[.,\/#!$%\^&\*;:{}=\-_`~()]/g, "")
                    .toLowerCase()
                    .split("")
                    .reverse()
                    .join("");

    return newString === string.toLowerCase().replaceAll(" ", "")
    .replace(/[.,\/#!$%\^&\*;:{}=\-_`~()]/g, "");
    


};

// Do not edit below this line
module.exports = palindromes;
