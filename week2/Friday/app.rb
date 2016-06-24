require "sinatra"
require "sinatra/reloader"
require "imdb"

get "/" do

	erb(:home)
end

post "/search_imdb" do
	@movie_list = []
	the_search = Imdb::Search.new(params[:word])
	result = the_search.movies[0..15]

	while @movie_list.length < 9 do
		result.each do |movie|
			if movie.poster != nil && !movie.title.include?("Video Game")
				@movie_list.push(movie)
			end
		end
		end

	correct_movie = @movie_list.sample
	@correct_year = correct_movie.year

	erb(:start_game)
end


# get "/post_/:index" do
# 	index = params[:index].to_i
# 	@the_post = blog.latest_posts[index]
# 	erb(:post_details)
# end
