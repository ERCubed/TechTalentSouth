var myName = prompt("Who are you?");


function greeting(name) {
	console.log("Hello " + name);
}

greeting(myName);

//add or replace HTML text inside an element with a certain ID
document.getElementById("div1").innerHTML = "Something changed here...";

//add a class to an element with a certain ID
document.getElementById("div2").className = "nice-div";

//add an ID to an element with a certain ID
document.getElementById("div3").id = "cool_id";