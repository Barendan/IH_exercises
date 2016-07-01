"use strict";

var turns = Math.floor((Math.random() *(8 - 5) + 1));


class pitFight {
	constructor (listVikings) {
		this.listVikings = listVikings;
	};

	function startBattle(listVikings){
		var setTurns = turns;
		var fighterOne = listVikings[Math.floor(Math.random()*listVikings.length)];
		var fighterTwo = listVikings[Math.floor(Math.random()*listVikings.length)];
			while (fighterOne == fighterTwo){
			var fighterTwo = listVikings[Math.floor(Math.random()*listVikings.length)];
			}
			while (fighterOne.health > 10 || fighterTwo.health > 10 || setTurns > 0) {
				fighterOne.health -= fighterTwo.strength;
				console.log(`${fighterTwo.name} did ${fighterTwo.strength} damage to ${fighterOne.name}.`;
			}
	}
};

module.exports = pitFight;

