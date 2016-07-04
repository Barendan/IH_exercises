"use strict";

var Viking = require("./lib/vikings.js");
var pitFight = require("./lib/pitFight.js");
var Saxon = require("./lib/saxon.js");
var War = require("./lib/war.js");


var listVikings = [
	new Viking("Bjorn", 100, 10),
	new Viking("Jarl", 120, 8),
	new Viking("Thormund", 110, 14),
	new Viking("Jovar", 130, 13),
	new Viking("Yalberg", 110, 7),
	new Viking("Ragnar", 140, 13),
	]

var fighterOne = listVikings[Math.floor(Math.random()*listVikings.length)];
var fighterTwo = listVikings[Math.floor(Math.random()*listVikings.length)];
while (fighterOne === fighterTwo){
			var fighterTwo = listVikings[Math.floor(Math.random()*listVikings.length)];
			};

var battle1 = new pitFight(fighterOne,fighterTwo, 7);
battle1.startBattle();



var saxonTown = [];
for ( var i = 0; i < 100; i++){
	var health = Math.floor(Math.random() * (20 - 1 + 1)) + 1;;
	var strength = Math.floor(Math.random() * (20 - 1 + 1)) + 1;;
	var randomSaxon = new Saxon(health, strength);
	saxonTown.push(randomSaxon);
}

console.log(saxonTown[2]);

var war1 = new War(listVikings, saxonTown)
war1.startBattle();




// function randomInteger (min, max) {
//   return Math.floor(Math.random() * (max - min + 1)) + min;
// }





 // function createObject(){
 //             var points = 0;

 //             return {
 //                addPoint: function(){ ++points;},
 //                score: function(){ return points;}
 //             };
 //        }

 //        var obj = createObject();
 //        obj.addPoint();
        //expect(obj.score()).toEqual();
        //expect(typeof(obj.points)).toEqual();


