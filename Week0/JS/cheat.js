var number = 10;

// Equal
if (number === 10) {
    console.log("Number is equal to 10!");
    console.log(number);
}

number = number - 1;

// Not equal
if (number !== 10) {
    console.log("Number is now NOT equal to 10!");
    console.log(number);
}

number = number + 2;

// Greater than
if (number > 10) {
    console.log("Number is now greater than 10!");
    console.log(number);
}

// Greater than or equal
if (number >= 10) {
    console.log("Number is greater than or equal to 10!");
    console.log(number);
}

number = 10;

// Less than or equal
if (number <= 10) {
    console.log("Number is less than or equal to 10!");
    console.log(number);
}

number = number - 2;

if (number <= 10) {
    console.log("Number is STILL less than or equal to 10!");
    console.log(number);
}


var country, number;

country = "Australia";
// || represents an OR
if (country === "Australia" || country === "New Zealand") {
    console.log(country + " is either Australia or New Zealand!");
}

country = "New Zealand";
if (country === "Australia" || country === "New Zealand") {
    console.log(country + " is either Australia or New Zealand!");
}

number = 15;
// && represents an AND
if (number > 10 && number < 20) {
    console.log(number + " is between 10 and 20.");
}

number = 21;
// No longer runs because number is greater than 20
if (number > 10 && number < 20) {
    console.log(number + " is between 10 and 20.");
}

var number;

number = 21;
if (number > 10 && number < 20) {
    console.log(number + " is between 10 and 20.");
} else if (number <= 10) {
    console.log(number + " is less than 10.");
} else {
    console.log(number + " is greater than 20.");
}

var number;

number = 101;
if (number !== 101 && number < 25 || number > 100) {
    console.log(number + " isn't 101 AND is less than 25 OR is greater than 100.");
}


// LOOPS
/*for (  [start];  [condition];  [after-each]  ) {
    [task-code]
}
*/
var i;
for (i = 1;  i <= 42;  i = i + 1) {
    console.log(i);
}

var isTrue = true;
var count = 5;

while (isTrue) {
    console.log(count);
    if (count < 3) {
            isTrue = false;
    }
    count--; //shorthand for "count = count - 1" or "count -= 1"
}

// FUNCTIONS
/*function [name] ( [parameter1], [parameter2], [parameter3]... ) {
    [code]
    return [value];
}*/
function claimForCountry (country, thing) {
    var claim;

    claim = "In the name of " + country + " I claim this " + thing + "!";

    return claim;
}
var message;

message = claimForCountry("Spain", "land");
console.log(message);

message = claimForCountry("Italy", "pizza");
console.log(message);


// No parameters
function hi () {
    return "Hi!";
}
console.log( hi() );

//OR
// No return
function hi () {
    console.log("Hi!");
}
hi();



// Five parameters
function addFiveNumbers (n1, n2, n3, n4, n5) {
    return n1 + n2 + n3 + n4 + n5;
}
console.log( addFiveNumbers(10, 20, 30, 5, 7) );


function blastOff(number) {
var number;
while (number >= 0) 
    {
    console.log(number--)
    if (number === -1){
        console.log("Blast off!"); }
    };
}
blastOff(5)



//Arrays
var countries;
countries = [ "Russia", "Finland", "Morocco", "Brazil" ];
console.log(countries);

// Finland
console.log("The second country is " + countries[1] + "!");


var countries, i;
countries = [ "Russia", "Finland", "Morocco", "Brazil" ];
for (i = 0; i < countries.length; i = i + 1) {
    console.log(countries[i]);
}

//USING PUSH
var countries;
countries = [];

countries.push( "Russia", "Finland", "Morocco", "Brazil" );
countries.push( "Canada" );
countries.push( "Mexico", "Japan" );

console.log(countries);

//OBJECTS
var country;

country = {
    name: "Uruguay",
    continent: "South America",
    capital: "Montevideo"
};

console.log(country);
//Add more to Object via
console.log( country["name"] );
console.log( country.continent );

country["language"] = "Spanish";
country.population = 3324460;
country.name = "Eastern Republic of Uruguay";

console.log(country);
//LOOP OVER THE KEYS IN AN OBJECT
var country;

country = {
    name: "Uruguay",
    continent: "South America",
    capital: "Montevideo"
};

for (key in country) {
    console.log("This country's " + key + " is " + country[key] + ".");
}







