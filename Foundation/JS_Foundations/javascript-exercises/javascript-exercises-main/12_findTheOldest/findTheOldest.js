const findTheOldest = function (array) {
    const date = new Date();

    array.forEach(element => {

        if (!element.yearOfDeath) {
            element["yearOfDeath"] = date.getFullYear()
        }

        element["age"] = element.yearOfDeath - element.yearOfBirth;

    });
    const maxKey = array.reduce((max, current) => {
        return current["age"] > max["age"] ? current : max;
    });

    return maxKey





};

// Do not edit below this line
module.exports = findTheOldest;
