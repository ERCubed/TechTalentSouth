var myName = prompt("What is your name?");

var heightInches = prompt("How tall are you in inches?");

var weightPounds = prompt("How much do you weigh in pounds?");
alert("You're Fat!");

var heightCentimeters = heightInches * 2.54;

var weightKilograms = weightPounds * 0.453592;

console.log(myName + ' is ' + heightCentimeters + ' cm and ' + weightKilograms + ' kg.');
