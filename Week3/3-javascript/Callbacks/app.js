var fs = require("fs");

fs.readFile("movies.txt", "utf8", function(theError, fileContents) {
	console.log("\nFile has been read! Printing it's contents:")
	// We have access to the contents of the file in here
	console.log(fileContents);
});



var sleep = require("./lib/sleep.js");

sleep(5, function(){
	console.log("5 seconds have ellapsed!");
});





var colorsArray = ["chartreuse","pink","indigo","black",]


// named function style

// function printColor (theColor) {
// 	console.log(theColor);
// };
// colorsArray.forEach(printColor);

// function printStuff() {
// 	console.log("10 seconds over!!");
// };

// setTimeout(printStuff, 10000);
// console.log("Timer started");

sleep(1, function() {
	//Anonymous Function style
	colorsArray.forEach(function (theColor) {
		console.log(theColor.toUpperCase());
	});
});



console.log("\nEND OF PROGRAM\n");





