var numbers = "80:70:90:100";

function averageColon(numbers) {

var parsedNumber = numbers.split(":").map(function (number) {
	return parseInt(number);
});


var total = parsedNumber.reduce(function (sum, number){
	return sum + number;
	});
	return total / parsedNumber.length;
}

// console.log(parsedNumber)
console.log(averageColon(numbers))



// var average = numbers.reduce(function (sum, number) {
// 	return sum 
// })