$(document).on("turbolinks:load", function () {
	
	$('.js-add-ingredient').click( SandwichrApp.addIngredientToSandwich ); 

});


SandwichrApp.addIngredientToSandwich = function (event) {
	var btn = event.currentTarget; 

	var IngredientId = $(btn).data("ingredient-id");
	var SandwichId = $(btn).data("sandwich-id");
	var IngredientName = $(btn).data("ingredient-name");
	
	var data = { ingredient_id: IngredientId };

	$.ajax({
		type: "POST",
		url: `/api/sandwiches/${SandwichId}/ingredients/add`,
		data: data,
		success: SandwichrApp.updateFunk(IngredientName),
		error: SandwichrApp.handleError
	});
};

SandwichrApp.updateFunk = function (ingredient) {
	console.log("Added ingredient successfully");

	var show = `
	<li> ${ingredient} </li>
	`;
	
	$('.js-ingredient-list').append(show);
};

SandwichrApp.handleError = function (err) {
	console.log("You got error:", err.responseText);

	`<div> The ingredient could not be added. Try again later! </div>`
}