
class Animal {
  constructor (name, noise) {
  	this.name = name;
  	this.noise = noise;
  }

  shout () {
  	console.log("Mooooo!");
  }

  makeNoise () {
  	console.log(this.noise + "!!!");
  }
}

module.exports = Animal;