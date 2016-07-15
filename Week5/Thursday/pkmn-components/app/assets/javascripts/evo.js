
PokemonApp.Evolution = class {

	constructor () {

	}
	render () {
		console.log("Rendering Evolution:");
		console.log(response);

		$('.js-evolutions-modal').modal("show");
	
		$.ajax ({
			type: "GET",
			url: "/api/pokemon/" + this.id,
			success: function (response) {
				console.log(response);
		});
	}
}


$(document).on("ready", function() {

	$(".btn-evo").on("click", function () {
		var evolutionsComponent = new PokemonApp.Evolution();
		evolutionsComponent.render();
	});
});
