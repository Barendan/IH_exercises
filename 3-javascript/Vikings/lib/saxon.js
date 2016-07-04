"use strict";

class Saxon {
	constructor(health, strength) {
		this.name = "Saxon";
		this.health = health;
		this.strength = strength;
	}

	attack (otherNpc){
    otherNpc.health -= this.strength * 2;
	this.strength --;
	}
};




module.exports = Saxon;