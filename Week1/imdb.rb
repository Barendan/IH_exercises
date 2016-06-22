
require("imdb")

movies = IO.read("lib/movies.txt")
movies_array = movies.split("\n")


movie_ratings=[]


movies_array.each do |title|

	the_search = Imdb::Search.new(title)
	first_result = the_search.movies[0]#.movies;array that contains the results
	movie_ratings.push(first_result)

end

# puts movie_ratings
# puts movie_ratings[1]
#_________________________________________________________________________

puts ""
puts ""

for i in 1..10
		row = ""
		current_number = 11 - i

			
	for z in 0...(movies_array.length)

		if (movie_ratings[z][1]).round(0) >= counter
			row[z]="|#"
		else 
			row[z]="| "
		end

	end


puts"#{row[0]}#{row[1]}#{row[2]}#{row[3]}#{row[4]}#{row[5]}#{row[6]}#{row[7]}|"
counter -= 1 
end



i = 0
movie_ratings.each { |movie|
	puts""
	puts "#{i+1}. #{movie[0]}"
	i += 1
}

