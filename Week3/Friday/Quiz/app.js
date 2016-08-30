"use strict";

var Question = require("./lib/question.js");
var Quiz = require("./lib/quiz.js")
var read = require('read');


var question1 = new Question("Who teaches the course you are in?","Nizar",1)
var question2 = new Question("Is there only one guy named Daniel in the class?","yes",2)
var question3 = new Question("What provides the greatest amount of light to the Earth?","sun",3)
var question4 = new Question("Which drug would you never want to try?","heroin",4)
var question5 = new Question("What's the best feature of Ironhack?","beer",5)

var theQuiz = new Quiz();

theQuiz.addQuestion( question1 );
theQuiz.addQuestion( question2 );
theQuiz.addQuestion( question3 );
theQuiz.addQuestion( question4 );
theQuiz.addQuestion( question5 );


	function handleInput (err, input) {
		theQuiz.answer(input);

		if (theQuiz.isGameOver()) {
			console.log("Game Over, you Win!!");
		} else {
		options.prompt = theQuiz.getCurrentQuestion();
		read(options, handleInput);
		}
	}



for (var i = 0; i < theQuiz.questions.length; i += 1) {
	var options = { prompt: theQuiz.getCurrentQuestion() };
	
	read(options, handleInput) 
}





