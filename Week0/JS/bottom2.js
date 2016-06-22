// An array can also store mixed values.
var mixed = [ 12345, 6549, 'ZNN009', { value: 'an object!' } ];
// Even other arrays!
var coordinates = [ [0, 0], [1, 2], [3, 4], [5, 6] ];

// You can use any string as the key but you will need quotes if the key name
// does not match variable naming rules.
var alumniByCity = {
  Miami: 20,
  'New York': 5,
  'San Francisco': 10
};

var couplet =
  'Whether or not we find what we are seeking\nIs idle, biologically speaking.';
// This breakline is totally legal. We are trying to keep lines under 80
// characters.

var alumniByCity = {
  'Miami': 20,
  'New York': 5,
  'San Francisco': 10
};
var city = prompt('Choose a city (San Francisco, New York, Miami) to see the amount of alumni there.');
var alumniCount = alumniByCity[city];
alert(city + ' has ' + alumniCount + ' alumni!');


var superhero = { name: 'Batman', inventory: [] };
superhero.inventory.push('rope');
superhero.inventory.push('batarang');
superhero.inventory.push('darts'); // Add darts to Batman's inventory

superhero.name.length;
superhero.inventory[2].toUpperCase(); // What do you think this method does?


var anArray = [ 1, 2, 3 ];
anArray.length;

// Strings have length too
"Hello".length;


"   My name is Salva   ".trim();

5.toString(); // is invalid
5 .toString(); // will return the string literal "5"
(5).toString(); // like above

//attributes provide a description of the value 
//while methods allow you to operate on them


a += 1; //this means, add 1 to a and store the result inside a
a *= 9;
a /= 2;
a %= 7; // this is the remainder of an integer division.

var a = 10;
++a; // pre increment
a++; // post increment

var b = 10;
--b; // pre decrement
b--; // post decrement

/*Pre-increment is an operator that takes the variable, increases it by one and returns the new value. Post-increment is another operator that takes the variable, 
increase it by one and returns the former value for that variable. */

var subject = { name: 'Harvey Dent', facility: 'Arkham Asylum' };
var foe = { name: 'Harvey Dent', facility: 'Arkham Asylum' };
foe === subject; // false b/c they are 2 diff objects


// This computes the distance between the point and the offset
var offset = { x: 1, y: 1 };
var point = { x: 5, y: 3 };
var distanceX = Math.abs(point.x - offset.x);
var distanceY = Math.abs(point.y - offset.y);
var distance = Math.sqrt(distanceX * distanceX + distanceY * distanceY);


var userInput = prompt('Enter a number');
var aNumber = parseFloat(userInput); // convert user input into a Number

if (aNumber % 2 === 0) {
  console.log('The number ' + aNumber + ' is even');
}
else {
  console.log('The number ' + aNumber + ' is odd');
}


var userInput = prompt('Enter a positive number');
var aNumber = parseFloat(userInput);
if (aNumber < 0) {
  console.log('I said a positive number. I’ll fix it for you...');
  aNumber = -aNumber;
}
alert('The square root is ' + Math.sqrt(aNumber));



var userInput = prompt('Enter your age');
var age = parseFloat(userInput);

if (age > 65) {
  console.log('Reduced price: 10$');
}
else if (age > 28) {
  console.log('Normal price: 25$');
}
else if (age > 16) {
  console.log('Youth price: 10$');
}
else {
  console.log('Kid price: 5$');
}


var command = prompt('Show help for command... (prompt, alert, confirm)');

switch (command) {
  case 'prompt':
    alert('Shows a modal dialog asking the user to enter a value.');
  break;

  case 'alert':
    alert('Shows a modal dialog informing about something.');
  break;

  case 'confirm':
    alert('Shows a modal dialog asking the user to confirm an action.');
  break;

  default:
    alert('I don\'t understand your command: ' + command);
  break;
}



var month =
  parseInt(prompt('Enter a month to know how long it is (1..12)'), 10);

switch (month) {
  case 1:
  case 3:
  case 5:
  case 7:
  case 8:
  case 10:
  case 12:
    alert('31 days');
  break;

  case 2:
    alert('28 / 29 days');
  break;

  default:
    alert('30 days');
  break;
}



var ratings = [1, 3, 1, 1, 5, 4, 3, 2, 2, 2, 3, 3, 1, 1, 2, 4, 5, 1, 2];
var sum = 0, index = 0;
while (index < ratings.length) {
  sum += ratings[index];
  index++;
}

//Find rating that's higher than 3
var index = 0;
var found = ratings[index] > 3;
while (!found) {
  index++;
  found = ratings[index] > 3;
}
var result = index;

//Using for is better suited
var sum = 0;
for (var index = 0, length = ratings.length; index < length; index++) {
  sum += ratings[index];
}
var average = sum / length;






// You may want to include some special characters in a string  such as tabs, new lines and
// quotes. If you need some of these characters use:
//
//   \n for new lines
//   \t for a tab
//   \' for a single quote
//   \" for a double quote
//   \\ for a back slash

//Use FOR loops when passing through collections
//and the WHILE syntax when looking for something.

while (<conditional_expression>) {
<instructions> // the body of the loop, what gets repeated while the condition is true
}

for ([<initialization_expression>];[ <conditional_expression>];
	[ <increment_expression>]) {
  <instructions>;
}


if (<conditional_expression>) {
  <instructions>
}
[else if (<conditional_expression>) {
  <instructions>
}]
...
[else {
  <instructions>
}] 







