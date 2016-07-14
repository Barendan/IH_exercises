$(document).ready(function() {
	
	$('#js-searchForm').on("submit", fetchArtists)

	$('.js-artist-list').on("click", ".js-artist-albums", fetchAlbums);

});


function fetchArtists (event) {
	event.preventDefault();

		var searchTerm = $('#js-searchName').val();
		var searchURL = `https://api.spotify.com/v1/search?type=artist&query=${searchTerm}`;

			$.ajax({
			  	type: "GET",
			  	url: searchURL,
			  	success: fullArtistDisplay,
			  	error	: characterError
				})
			$('#js-searchName').val("")
}


function fullArtistDisplay (artistResponse) {
	$('.js-artist-list').empty();

	artistResponse.artists.items.forEach(function (artist){
		createArtistHtml(artist);
	});
}

function createArtistHtml (artist) {
	var image;


	if (artist.images.length > 0){
		image = artist.images[0].url;
	} else {
		image = "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQCk2bayZHUJsWeglTeTOvjcX3PvSpnkqU3T-6YmCE6bT1nFQ56Bw";
	}

	var show = `
		<li class="artist-item">
	  		<h4>${artist.name}</h4>
	  		<img width="200px" height="200px" class="artist-image" src="${image}">
	  		<br>
	  		<button class="albums-btn js-artist-albums" data-id="${artist.id}">
	  			Show Albums for ${artist.name}
	  			</button>
	  	</li>
	  	`;

	$('.js-artist-list').append(show);
}

function characterError(err) {
	console.log("Here's the error:", err)
}



function fetchAlbums (event) {
	var btn = event.currentTarget;

	// console.log(event.currentTarget);

	var artistId = $(btn).data("id");

	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
		success: albumDisplay,
		error: albumError
	});
}

function albumDisplay (data){
	$('.js-albums-list').empty();


	
	data.items.forEach(function (album){
	  var image;

	  if (album.images.length > 0){
			image = album.images[0].url;
	  } else {
			image = "http://static.gigwise.com/artists/03122015_cat_music_science.jpg";
	  }

	  var show = `
	  <li>
	    <h4> ${album.name} </h4>
	    <img width="100px" height="100px" class="artist-image" src="${image}">
	  </li>
	  `;

	
	  $('.js-albums-list').append(show)
	});

}

function albumError(err) {
	console.log("Album error:", err)
}