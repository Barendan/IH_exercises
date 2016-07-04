"use strict";

class pitFight {
	constructor (fighterOne,fighterTwo, turns) {
		this.fighterOne = fighterOne;
		this.fighterTwo = fighterTwo;
		this.turns = turns;
	};



	startBattle(){
			console.log("The battle will now commence!");
			while (this.fighterOne.health > 20 && this.fighterTwo.health > 20 
				&& this.turns > 0 && this.fighterOne.strength > 0 && this.fighterTwo.strength > 0) {
				
					// this.fighterOne.health -= this.fighterTwo.strength * 2;
					// this.fighterTwo.strength --;
					// this.fighterTwo.health -= this.fighterOne.strength * 2;
					// this.fighterOne.strength --;
					this.fighterOne.attack(this.fighterTwo);
					this.fighterTwo.attack(this.fighterOne);

					console.log(`${this.fighterOne.name} did ${this.fighterOne.strength * 2} damage to ${this.fighterTwo.name}.`)
					console.log(`${this.fighterTwo.name} did ${this.fighterTwo.strength * 2} damage to ${this.fighterOne.name}.`)
					this.turns--;
				}  
						console.log("The battle has ended.");
						if (this.fighterOne.health > this.fighterTwo.health){
						console.log(`${this.fighterOne.name} is the victor!`);
					} else {
						console.log(`${this.fighterTwo.name} is the victor!!`)

					}

			};
	}


module.exports = pitFight;

	
    //      var obj = {};
    //     var methodNames = ['meow', 'jump'];
    //     for (var i = 0; i < methodNames.length; i++){
    //       obj[[methodNames[i]]] = function(){ return 'it works';};
    //     }
    //     expect(obj.meow()).toEqual();
    // });
