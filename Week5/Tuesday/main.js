
$(document).ready(function () {
	

		$(".js-fetch").on("click", getCharactersFromApi)

		$(".js-fetch").click(function(){
			$(".js-fetch").slideUp(2000)
			setTimeout(function(){
			$('.js-fetch').toggle("Hide Characters").slideDown()

		},2000)
			
		})



	$(".js-character-form").on("submit", function (event) {
		event.preventDefault();

		// Grab info from form
		var name = $('.js-name').val()		
		var occupation = $('.js-occupation').val()
		var weapon = $('.js-weapon').val()

		var params = {
			name: name,
			occupation: occupation,
			weapon: weapon
		};

		$.ajax({
  			type: "POST",
  			url: "https://ironhack-characters.herokuapp.com/characters",
  			data: params,
  			success: updateList,
  			error: characterError
		})
		
	})
})

function getCharactersFromApi(){
	$.ajax({
			type: "GET",
			url: "https://ironhack-characters.herokuapp.com/characters",
			success: showCharacters,
			error: characterLoadError
			})
}

function showCharacters (response) {
	response.forEach(function (character) {
		appendCharacter(character);
	})
}

function appendCharacter(character){
		var schindlersList = `
		<li>
			 <b>Name:</b> ${character.name}<br>
			 <b>Occupation:</b> ${character.occupation}<br>
			 <b>Weapon:</b> ${character.weapon}<br><br>
		</li>
		`;
		$('.js-character-list').append(schindlersList);
	}

function updateList (response) {
	$('.js-character-list').empty();

	getCharactersFromApi();
	console.log(response);

	}

function characterError (err) {
	console.log("My error:", err)
	}

function characterLoadError (err) {
	console.log("My error:", err)
	}









		// var newCharacter = {
		//     name: $('.js-name').val(),
		//     occupation: $('.js-occupation').val(),
		//     weapon: $('.js-weapon').val()
		// };