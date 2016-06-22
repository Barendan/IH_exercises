function <name>([<argument_list>]) {
  <instructions>
  [return <expression>;]
}

// This is a function declaration.
function add(a, b) {
  'use strict';

  return a + b;
}

// This is a function literal being assigned to the variable addition.
var addition = function (a, b) {
  return a + b;
}; // the semicolon is needed as you are ending a statement.

// This is invalid because JS thinks you are declaring a function and a
// function declaration must have a name.
function (a, b) {
  return a + b;
}

function map(anArray, aFunction) {
  'use strict';

  var newArray = [];
  for (var i = 0, l = anArray.length; i < l; i += 1) {
    newArray.push(aFunction(anArray[i]));
  }
  return newArray;
}
function double(value) {
  'use strict';

  return 2 * value;
}
var target = [2, 4, 6];
var result = map(target, double);




function avg(anyArray) { // anyArray is a placeholder, telling the function to expect something here
  var sum = 0;
  for (var index = 0, length = anyArray.length; index < length; index += 1) {
    sum += anyArray[index];
  }
  return sum / length;
}

var ratings = [1, 3, 1, 1, 5, 4, 3, 2, 2, 2, 3, 3, 1, 1, 2, 4, 5, 1, 2];
avg(ratings); // we are calling the function and passing it our new ratings variable
avg([1, 2, 3]); // or we can pass it an array directly

--------------------------
function sumRatings(anArray) {
  var sum = 0;
  for (var i = 0, l = anArray.length; i < l; i += 1) {
    sum += anArray[i];
  }
  return sum;
}

function avg(anArray) {
  if (anArray.length === 0) { return; }
  return sumRatings(anArray) / anArray.length;
}
-------------------------

function root(value, radix) {
  if (typeof radix === 'undefined') { radix = 2; }
  return Math.pow(value, 1 / radix);
}


function makeRoot(radix) {
  'use strict'; // use strict also affects all inner functions.

// we are declaring a second function inside the makeRoot function
  function root(value) { 
    return Math.pow(value, 1 / radix);
  }

// now we return the function we just declared
  return root;
}

var sqrt = makeRoot(2);
sqrt(16);

var cubicrt = makeRoot(3);
cubicrt(27);

var fourthrt = makeRoot(4);
fourthrt(256);



function avg(anyArray) {
  'use strict';

  if (!Array.isArray(anyArray)) {
    anyArray = arguments;
  }

  var sum = 0;
  for (var index = 0, length = anyArray.length; index < length; index += 1) {
    sum += anyArray[index];
  }
  return sum / length;
}

/*
This modification uses the utility method isArray() for checking if the 
first parameter is actually an Array. If it's not we assume the user is 
trying to pass the numbers directly so we know they are stored inside 
arguments variable. Notice, it does not matter if you are passing more 
parameters than those the function is expecting. 

As arguments can be used with the index operator ([]), we don't need to 
convert it into a real Array, we simply say the generic Array is arguments 
and we are done. 
*/


var computer = {
  name: 'Deep Thought',
  getTheAnswerToLife: function () {
    return console.log(this.name + ': 42');
  },
  testThis: function () {
    console.log(this === computer);
  }
};

computer.name; // accessing to the name property
computer.getTheAnswerToLife; // accessing to the getTheAnswerToLife property
computer.getTheAnswerToLife(); // calling the function as method
computer.testThis(); // should print true

var anotherComputer = { name: 'HAL' };
anotherComputer.computeAnswerToLife = computer.getTheAnswerToLife;
anotherComputer.testThis = computer.testThis;
// Now anotherComputer has the same methods as computer.
anotherComputer.testThis(); // will be false as now this is pointing to
                            // anotherComputer
anotherComputer.computeAnswerToLife(); // still works!

var f = anotherComputer.computeAnswerToLife;
f(); // will fail because you are trying to access name from undefined

computer.getTheAnswerToLife(); // this will be computer
anotherComputer['computeAnswerToLife'](); // this will be anotherComputer
f(); // there is no access operator, this will be undefined in strict mode

<condition> ? <expression_if_true> : <expression_if_false>
var aNumber = 7;
var evenOrOdd = (aNumber % 2 === 0) ? 'even' : 'odd' 
console.log(aNumber + ' is ' + evenOrOdd);

