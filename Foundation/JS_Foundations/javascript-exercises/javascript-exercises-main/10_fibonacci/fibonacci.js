const fibonacci = function(n) {
    if (n >= 0){
        if (parseInt(n) === 0) return 0;   
    if (parseInt(n) === 1) return 1;   
    
    return fibonacci(parseInt(n) - 1) + fibonacci(parseInt(n) - 2);
    }
    else {
        return "OOPS"
    }
    
};

// Do not edit below this line
module.exports = fibonacci;
