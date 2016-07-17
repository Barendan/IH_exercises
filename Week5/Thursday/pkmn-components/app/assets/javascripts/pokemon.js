// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
PokemonApp.Pokemon = class {

	constructor (pokemonUri) {
		this.id = PokemonApp.idFromUri( pokemonUri );
	}

	render() {
		console.log("Rendering pokemon: #" + this.id);


		$.ajax ({
			type: "GET",
			url: "/api/pokemon/" + this.id,
			success: function (response) {
				console.log(response)

				PokemonApp.evolutionsArray = response.evolutions;
				PokemonApp.pokeGetImage(response.sprites[0].resource_uri);
				
				var descriptionComponent = new PokemonApp.Description(response.descriptions);
				descriptionComponent.render();
				// var lastArr = response.descriptions.length - 1;
				// PokemonApp.pokeGetDesc(response.descriptions[lastArr].resource_uri);


				$(".js-pkmn-name").text(response.name);
				$(".js-pkmn-number").text(response.pkdx_id);
				$(".js-pkmn-height").text(response.height);
				$(".js-pkmn-weight").text(response.weight);

				$(".js-pkmn-hitpoints").text(response.hp);
				$(".js-pkmn-atk").text(response.attack);
				$(".js-pkmn-def").text(response.defense);

				$(".js-pkmn-sp-atk").text(response.sp_atk);
				$(".js-pkmn-sp-def").text(response.sp_def);

				$(".js-pkmn-speed").text(response.speed);

				var typeNames = [];
				response.types.forEach(function (type){
					typeNames.push(type.name);
				});
				var variable = typeNames.join(", ");
				$(".js-pkmn-type").text(variable);

				$(".js-pokemon-modal").modal("show");
			},
			error: PokemonApp.handleError
		});

	};

}

PokemonApp.pokeGetImage = function (resourceURI) {
	//Get Purple Sprite
	$.ajax({
		type: "GET",
		url: resourceURI,
		success: function (response) {
			// console.log(response);
			$(".js-pkmn-pic").html(`<img src="http://pokeapi.co/${response.image}">`);
		},
		error: PokemonApp.handleError
	})
};


// PokemonApp.pokeGetDesc = function ( descURI ) {
// 	//Get dis foo's description
// 	$.ajax({
// 		type: "GET",
// 		url: descURI,
// 		success: function (response) {
// 			console.log(response);
// 			$(".js-pkmn-desc").html(response.description);
// 		},
// 		error: PokemonApp.handleError
// 	});

// }



PokemonApp.idFromUri = function (pokemonUri) {
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
};

PokemonApp.handleError = function (error) {
	console.log("Super freak error:", error);
};



$(document).on("ready", function() {

	$(".js-show-pokemon").on("click", function (event) {
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});

});