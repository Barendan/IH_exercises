"use strict";

class Viking {
	constructor (name, health, strength) {
		this.name = name;
		this.health = health;
		this.strength = strength;
	}

	attack (otherFighter){
    otherFighter.health -= this.strength * 2;
	this.strength --;
	}

};

module.exports = Viking;