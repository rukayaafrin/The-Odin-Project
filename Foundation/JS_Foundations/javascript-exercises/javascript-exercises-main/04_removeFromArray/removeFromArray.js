const removeFromArray = function(array, ...nums) {
    for (i = 0; i <array.length; i++){
        nums.forEach(num => {
            let indexOfNum = array.indexOf(num);
            if (indexOfNum !== -1){
                array.splice(indexOfNum,1)
            }
        })
    } 
    return array


};

// Do not edit below this line
module.exports = removeFromArray;
