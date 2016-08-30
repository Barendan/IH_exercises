
$(document).ready( function() {
	console.log("Document is ready");

	$('.js-alert').click( function() {
		$('.container').fadeToggle();

		console.log("Clicked it");
	})

	$('.unicorn').on('click', function() {
		$('.container, .js-alert, .unicorn, progress').toggleClass('rainbow');
	})
	$('.')
});





// 	console.log("The document is ready now");

// 	function doStuffOnClick() {
// 		alert("I told you not to click it!");

// 	$('.js-alert').on('click', doStuffOnClick);

// 	console.log( $('.js-alert'));
// 	console.log( $('js-alert').length );


// Console.log("app.js end")






