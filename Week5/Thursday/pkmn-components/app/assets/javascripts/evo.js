

PokemonApp.Evolution = class {

	constructor () {
		// this.id = id;
		// this.info = info;
	};

	render () {
		console.log("Rendering Evolution:");
		console.log(PokemonApp.evolutionsArray);		

		// $('.js-ev-title').text(`Evolutions for ${this.info.name}`);
		$('.js-evolutions-list').empty();
		// $('.js-evolutions-list').show();		


		PokemonApp.evolutionsArray.forEach(function (theEvolution) {
			$.ajax({
				type: "GET",
				url: theEvolution.resource_uri,
				success: PokemonApp.showEvolutions,
				error: PokemonApp.handleError
			});
		});

	$('.js-evolutions-modal').modal("show");
	}
}

PokemonApp.showEvolutions = function (response) {
	var evoName = response.name;
	var linkUri = response.resource_uri;
	// console.log("banana");
	// console.log(response);

	$.ajax({
		type: "GET",
		url: response.sprites[0].resource_uri,
		success: function (spriteResponse) {


			var show = `
			<li>
			<button class="js-show-pokemon btn btn-link" 
			data-pokemon-uri="${linkUri}"> ${evoName} </button>
			<img src="http://pokeapi.co${spriteResponse.image}">
			</li>
			`;

			$('.js-evolutions-list').html(show);

			$('.js-show-pokemon').on("click", function () {
				// event.preventDefault;
				console.log("Ello Mate!");
				var $button = $(event.currentTarget);
				var pokemonUri = $button.data("pokemon-uri");

				var evoPokemon = new PokemonApp.Pokemon(pokemonUri);
				$('.js-evolutions-modal').modal("hide");

				evoPokemon.render();

			});
		},
		error: PokemonApp.handleError
	});
}


$(document).on("ready", function() {

	$(".js-evolutions").on("click", function () {
		var evolutionsComponent = new PokemonApp.Evolution();
		evolutionsComponent.render();
	});

});
