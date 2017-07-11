var choices = ["rock", "paper", "scissors"];
var score = {
	user: 		0,
	computer: 	0,
	tie: 		0
};
var compChoice;		// Placeholder variable for below.
// toggleScoreDisplay(score);

/** 
* Use jQuery to bind click events to the R/P/S elements to know what the user selects
**/

$('#rock').click(function() {
	compChoice = computerChoice(choices);
	roundLogic('rock', compChoice, score)
});
$('#paper').click(function() {
	compChoice = computerChoice(choices);
	roundLogic('paper', compChoice, score)
});
$('#scissors').click(function() {
	compChoice = computerChoice(choices);
	roundLogic('scissors', compChoice, score)
});

function toggleScoreDisplay(score) {
	
	if (score["user"] + score["computer"] + score["tie"] == 0) {
		// When the page initially loads the score should total zero, so let's hide the score.
		$('.score').addClass('hidden');
		$('.no_score').removeClass('hidden');
	} else {
		// There is a score to display, so hide the message.
		$('.score').removeClass('hidden');
		// And display the score...
		$('#user_score').html("User: " + score['user']);
		$('#computer_score').html("Computer: " + score['computer']);
		$('#tie_score').html("Ties: " + score['tie']);
	}

}

// Randomly pick the computer's chouce based off of the input array of options.
function computerChoice(choices) {
	// Selecting random numbers in JavaScript isn't always "pretty"
	var pick_number = Math.floor((Math.random() * choices.length));
	return choices[pick_number];
}

function checkForWinner(score) {
	if (score['user'] >= 5) {
		$('#winner').removeClass('hidden').addClass('user_wins').html("You beat the computer!");
	} else if (score['computer'] >= 5) {
		$('#winner').removeClass('hidden').addClass('computer_wins').html("I'm sorry, Dave. I can't let you win.");
	}
}

/** The main logic for determining who won the round...
* u = User's choice
* c = Computer's Choice
* score = The scoring hash to be updated
**/
function roundLogic(u,c,score) {
	switch (u) {
		case 'rock':
			switch (c) {
				case 'rock':
					score['tie'] += 1;
					break;
				case 'paper':
					score['computer'] += 1;
					break;
				case 'scissors':
					score['user'] += 1;
					break;
			}
			break;
		case 'paper':
			switch (c) {
				case 'rock':
					score['user'] += 1;
					break;
				case 'paper':
					score['tie'] += 1;
					break;
				case 'scissors':
					score['computer'] += 1;
					break;
			}
			break;
		case 'scissors':
			switch (c) {
				case 'rock':
					score['computer'] += 1;
					break;
				case 'paper':
					score['user'] += 1;
					break;
				case 'scissors':
					score['tie'] += 1;
					break;
			}
			break;

	}
	$('#message').html("You chose " + u.toUpperCase() + " ... The computer chose " + c.toUpperCase());
	toggleScoreDisplay(score);
	checkForWinner(score);
}


