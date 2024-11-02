const getTheTitles = function(array) {
    const bookTitles = [];
    array.forEach(element => {
        bookTitles.push(element.title)
        
    });
    return bookTitles

};

// Do not edit below this line
module.exports = getTheTitles;
