PokemonApp.Description = class {
	
	constructor (descriptionsArray) {
		this.descriptionsArray = descriptionsArray;
	}


	render () {
		var latestDescription = this.findLatestDescription();

		console.log("Rendering description:");
		console.log(latestDescription);

		$.ajax({
			type: "GET",
			url: latestDescription.resource_uri,
			success: PokemonApp.showDescription,
			error: PokemonApp.handleError
		});

	}


	findLatestDescription () {
	  var sortedArray = this.descriptionsArray.sort(function (descA, descB){
		// Return -1 if A should be sorted before B
		  if (descA.name > descB.name) {
		    return -1;} 
		// Return 1 if B should be sorted before A
		    else if (descB.name > descA.name )
		   {return 1;}
		// Return 0 if A and B are "tied"
			else { return 0;}
	  });

	  return sortedArray[0];
	}
};

PokemonApp.showDescription = function (response) {
	console.log("Pokemon DESCRIPTION:");
	console.log(response);

	$('.js-description-tag').text(response.description);
};

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