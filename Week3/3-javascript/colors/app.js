
var countColors = require("./count-colors.js");


var colorsArray = ["indigo", "black", "purple", "indigo", "chartreuse", "indigo", "indigo", "magenta", "chartreuse", "scarlet"];



console.log("Testing countColors function");
console.log( countColors("indigo", colorsArray) === 4 );
console.log( countColors("chartreuse", colorsArray) === 2);
console.log( countColors("black", colorsArray) === 1);
console.log( countColors("pink", colorsArray) === 0);

