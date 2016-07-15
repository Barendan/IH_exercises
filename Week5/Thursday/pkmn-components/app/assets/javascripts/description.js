PokemonApp.Description = class {
	
	constructor (descriptionsArray) {
	this.descriptionsArray = descriptionsArray;
	}

	findLatestDescription () {
	  var sortedArray = this.descriptionsArray.sort(function (descA, descB){
	  	// descA.name
	  	// descB.name
		  if (descA.name > descB.name) {
		    return -1;} 
		    else if (descB.name > descA.name )
		   {return 1;}
	  });
	}

	render () {
		var latestDescription = this.findLatestDescription();

		console.log("Rendering description:");
		console.log(latestDescription);

		$.ajax({
			type: "GET",
			url: latestDescription.resource_uri,
			success: function (response) {
			console.log("Pokemon DESCRIPTION:");
			console.log(response);

			$('.js-description-wrapper').text(response.description);
			},
			error: PokemonApp.handleError
		});

	}
}






				//Sort
				// function Comparator(a, b) {
				//    if (a[2] < b[2]) return -1;
				//    if (a[2] > b[2]) return 1;
				//    return 0;
				// };
				// console.log("banana");
				// console.log(response);
				// var descName = [];
				// response.descriptions.forEach(function (desc){
				// 	 descName.push(desc.name.split("_"));
				// 	// var descInt = parseInt(descName[2], 10);

				// });
				// descName = descName.sort(Comparator);
				// // console.log(descName)
				// var lastSort = descName[descName.length - 1];
				// lastSort = lastSort.join("_");
				// response.descriptions.forEach(function (desc){
				// 	if(desc.name === lastSort){
				// 		$(".js-pkmn-desc").html(lastSort)
				// 	}
				// })
				//End of Sort