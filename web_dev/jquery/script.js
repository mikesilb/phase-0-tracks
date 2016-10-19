$(document).ready(function(){
	//console.log("Function is ready");
	$('#para').after("<p>Adds another paragraph after #para</p>");

	//add some fade out when mouseover
	$('li').mouseenter(function(){
		$(this).fadeTo('slow', 0.1);
	});
	$('li').mouseleave(function(){
		$(this).fadeTo('slow', 1);
	});
});