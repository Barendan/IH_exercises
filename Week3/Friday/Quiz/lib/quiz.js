"use strict";

class Quiz {
	constructor () {
		this.questions = [];
		this.currentIndex = 0;
	}

	addQuestion(newQuestion){
		this.questions.push(newQuestion);
	}

	getCurrentQuestion () {
		var index = this.currentIndex; 
		var currentQuestion = this.questions[index];
		return currentQuestion.text;
	}

	read(options, checkAnswer);

	function checkAnswer ( input ) {
			var index = this.currentIndex;
			if (input === currentQuestion.answer){
				this.currentIndex += 1;
				return true;
			}
			else {
				return false
			}
	}

	isGameOver () {
		if (this.currentIndex >= this.questions.length) {
			return true;
		} else {
			return false;
		}
	}



}

module.export = Quiz;


