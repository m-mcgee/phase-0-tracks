$(document).ready(function(){

	$("#nav-button").on("click", function(){

		$("header nav ul").slideDown(200);

	});

	$("header nav").on("mouseleave", function(){

		$("header nav ul").slideUp(1000);

	});

});