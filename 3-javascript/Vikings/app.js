"use strict";

var Viking = require("./lib/vikings.js");
var pitFight = require("./lib/pitFight.js");
// var Saxon = require();
// var War = require();

var listVikings = [];
var battle1 = new pitFight(listVikings);
// var battle1 = new pitFight(viking1, viking2, 10);
battle1.startBattle();



var Bjorn = new Viking("Bjorn", 100, 10);
var Jarl = new Viking("Jarl", 120, 8);
var Thormund = new Viking("Thormund", 110, 14);
var Jovar = new Viking("Jovar", 130, 13);
var Yalberg = new Viking("Yalberg", 110, 7);
var Ragnar = new Viking("Ragnar", 140, 13);


listVikings.push("Bjorn");
listVikings.push("Jarl");
listVikings.push("Thormund");
listVikings.push("Jovar");
listVikings.push("Yalberg");
listVikings.push("Ragnar");



// var saxon_town = [];
// for ( var = 0; i < 100; i++){
// 	var health = Math.round(( Math.random))
// }