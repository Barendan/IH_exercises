var user = {};
var responses = [];

function question1() {
	var name = prompt("What is your name?");
	user.name = name;
}
question1();

function question2() {
	var firstQuestion = prompt("Does null === 0? (Yes or No)");

  if (firstQuestion.toLowerCase() === 'yes') {
    firstQuestion = true
  } else if (firstQuestion.toLowerCase() === 'no') {
    firstQuestion = false
  } else {
    alert("Please answer either Yes or No");
    return question2();
  }
  responses.push(firstQuestion); // add the true or false value to the responses array
}

question2();


function question3() {
  var js = prompt('What was the original name for JavaScript: Java, LiveScript, JavaLive, or ScriptyScript?');
  ljs = js.toLowerCase();
  switch (ljs) {
  	case 'java':
    alert('Your answer is incorrect.');
    ljs = false;
  break;

  case 'javalive':
    alert('Your answer is incorrect.');
    ljs = false;
  break;

  case 'scriptyscript':
    alert('Your answer is incorrect.');
    ljs = false;
  break;

  case 'livescript':
    alert('Your answer is correct!');
    ljs = true;
  break;

  default:
  	alert('Please pick one of the answers');
  	return question3();
 break;
  }
  responses.push(ljs);
}

question3();

function question4() {
  var phy = prompt('Who was the greatest physicist in the past 100 years: Richard Feynman, Bruce Willis, or George Bush?');
  lphy = phy.toLowerCase();
  switch (lphy) {
  	case 'richard feynman':
    alert('Your answer is correct!');
    lphy = true;
  break;

  case 'bruce willis':
    alert('Your answer is incorrect.');
    lphy = false;
  break;

  case 'george bush':
    alert('Your answer is incorrect.');
    lphy = false;
  break;

  default:
  	alert('Please pick one of the answers');
  	return question4();
  }
  responses.push(lphy);
}

question4();

function question5() {
  var ball = prompt('What is your favorite basketball team: Knicks, Cavaliers, Warriors, or Heat?');
  lball= ball.toLowerCase();
  switch (lball) {
  	case 'knicks':
    alert('Your answer is incorrect.');
    lball = false;
  break;

  case 'cavaliers':
    alert('Your answer is incorrect.');
    lball = false;
  break;

  case 'warriors':
    alert('Your answer is incorrect.');
    lball = false;
  break;

  case 'heat':
    alert('Your answer is correct!');
    lball = true;
  break;

  default:
  	alert('Please pick one of the answers');
  	return question5();
  }
  responses.push(lball);
}

question5();

function evaluate( responsesArray ){
	var correct = 0;
	var incorrect = 0;

	for (var i= 0; i< responsesArray.length ; i++){
		if (responsesArray[i] === true) {
			correct += 1;
		}
		else 
			{ incorrect += 1;}
	}
	user.push(correct, incorrect);
	showResults();
// populate the “totals” variables from the “responsesArray”

// save the “totals” variables inside the user object

// call showResults
}

function showResults() {

// display the user results

}

// call the function, passing it the responses array
evaluate(responses);




