
var colorsArray = ["indigo", "black", "purple", "indigo", "chartreuse", "indigo", "indigo", "magenta", "chartreuse", "scarlet"];

function countColors (color, theArray) {
	var counter;
	var colorOccurances = 0;
	// for (counter = 0; counter < theArray.length; counter++) {
	// 	var colorFromArray = theArray[counter];


	// 	if (colorFromArray === color) {
	// 		colorOccurances += 1;
	// 	}
	// }
	theArray.forEach(function (colorFromArray) {
		if(colorFromArray === color) {
		colorOccurances += 1;
		}
	});
	return colorOccurances;	
}



console.log("Testing countColors function");
console.log( countColors("indigo", colorsArray) === 4 );
console.log( countColors("chartreuse", colorsArray) === 2);
console.log( countColors("black", colorsArray) === 1);
console.log( countColors("pink", colorsArray) === 0);


// RUBY EQUIVALENT

// color_array =  ["indigo", "black", "purple", "indigo", "chartreuse", "indigo", "indigo", "magenta", "chartreuse", "scarlet"];

// def count_color(color, the_array)
// 	color_occurances = 0 

// 	the_array.each do |color_from_array|
// 	if color_from_array == color
// 		color_occurances += 1
// 	end 
// 	color_occurances
// end

// puts "Testing count_colors method"

// p count_colors(blue)