const convertToCelsius = function(temp) {
  const covertedTemp = ((temp -32)*5/9);
  if (Math.round(covertedTemp) === covertedTemp ){
    return covertedTemp
  }
  else{
    return parseFloat(covertedTemp.toFixed(1))
  }

};

const convertToFahrenheit = function(temp) 
{
const ftemp = temp*9/5+32;
 return ftemp ? Math.round(ftemp)===ftemp ? ftemp : parseFloat((ftemp).toFixed(1)) : ""
};

// Do not edit below this line
module.exports = {
  convertToCelsius,
  convertToFahrenheit
};
