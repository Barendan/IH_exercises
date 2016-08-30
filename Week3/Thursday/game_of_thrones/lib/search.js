
function search(episodes){

var searchedEpisodes = episodes.filter(function(episode){

	var n = episode.description.indexOf("Jon Snow");

	return n !== -1

});


// console.log(searchedEpisodes)

var arr = searchedEpisodes.map(function(episode){

	return episode.title;
});

return arr;

}

module.exports = search;