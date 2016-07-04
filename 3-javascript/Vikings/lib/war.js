"use strict";

var turns = Math.floor((Math.random() *(8 - 5) + 1));

class War {
	constructor(assaulters, victims){
		this.assaulters = assaulters;
		this.victims = victims;
		this.turns = turns;
		this.casaulties = {
			vikings: [],
			victims: []
		}
	}

	startBattle(){
		for (var i = 1; i <= this.turns; i++){
		var stillAlive = [];

			this.assaulters.forEach(function (viking) {
				var randomVictim = this.victims[Math.floor((Math.random() *(100 - 0) + 1))];
			
				viking.attack(randomVictim);
				randomVictim.attack(viking);

				if (viking.health <= 0){
					this.casaulties.vikings.push(viking)
				} else {
					stillAlive.push(viking)
				}

				if (randomVictim.health <= 0) {
					this.casaulties.victims,push(randomVictim);
				}
			})
			this.assaulters = stillAlive;
		}

		this.printEndResult();
	}

	printEndResult() {
		console.log(`The Vikings had ${this.casaulties.vikings.length -1} casaulties`);
		console.log(`The Saxons had ${this.casaulties.saxons.length -1} casaulties`);
	}
}





module.exports = War;
