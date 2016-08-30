$(document).ready(function(){

	console.log("The document is ready");



	if("geolocation" in navigator) {
		console.log("Geolocation is available!")
		
		var options = { timeout: 1000 };
		
		navigator.geolocation.getCurrentPosition(showPosition, handleError, options)
	}

	else {
		console.log("Browser doesn't have geolocation. :(");

		var html = `
	      <h2> Update your browser, bro. </h2>
	      <p>
	        Your browser is older than dirt.
	        Update it to use these cool geolocation features.
	      </p>
	    `;

		$("body").append(html);
	}
});

function showPosition (position) {
	console.log("User consented to give location.");
	console.log(position);

	var lat = position.coords.latitude;
	var lng = position.coords.longitude;

	var mapImg = `<img src="https://maps.googleapis.com/maps/api/staticmap?center=${lat},${lng}&size=640x400&zoom=15" id="map"></img>`;
	// <ul>
	// 	<li> Latitude: ${lat} </li>
	// 	<li> Longitude: ${lng} </li>
	// </ul>

	$('body').append(mapImg);
	$('#map').append(lat,lng)

	// document.getElementById('position').innerHTML = 'Lat: ' +
	// position.coords.latitude + ', Lon:' + position.coords.longitude
}

// function show_static_map(location){
// 	var key ="AIzaSyCkUOdZ5y7hMm0yrcCQoCvLwzdM6M8s5qk"
// 	var static_map = `
// 					<img src = "https://maps.googleapis.com/maps/api/staticmap?center=${location}&zoom=14&size=400x400& key =${key}" alt = "current location map" height = "400" weight = "400">
// 					`

// 	$("body").append(static_map);
// }

function handleError(err) {
  console.error(err)
}


function displayMap(lat, lng){
	var img = `
	`;
}




