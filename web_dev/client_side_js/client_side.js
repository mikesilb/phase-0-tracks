function borderInOrange(event){
	console.log("Change border to orange");
	console.log(event);
	event.target.style.border = '5px solid orange';
}

var title = document.getElementById('Welcome');
title.addEventListener("click", borderInOrange);

function backgroundGreen(event){
	console.log(event);
	event.target.style.background = "green";
}

var background = document.getElementById("page");
background.addEventListener("mouseover", backgroundGreen);

function changeFontColor(event){
	console.log(event);
	event.target.style.color = "red";
}

var text = document.getElementById("paragraph");
text.addEventListener("click", changeFontColor);