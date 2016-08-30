"use strict";

var Animal = require("./lib/animal.js");

var shadow = new Animal("Shadow", "Ruff");

console.log( shadow.name);
shadow.shout();
shadow.makeNoise();

var princess = new Animal("Princess", "Meow");

console.log( princess.name);
princess.shout();
princess.makeNoise();