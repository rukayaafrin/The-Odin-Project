const repeatString = function(string, num) {
    try {
        if (num < 0) throw new Error('ERROR');
        let result = '';
        for(let i = 0; i < num; i++) {
            result += string;
        }
        return result;
    } catch (error) {
        return error.message;
    }
};

// Do not edit below this line
module.exports = repeatString;
