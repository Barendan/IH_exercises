require "sinatra"
require "sinatra/reloader"

require_relative "models/blog.rb"
require_relative "models/post.rb"

sec_in_day = 60 * 60 * 24

blog = Blog.new
blog.add_post Post.new("ANN",
	"Artificial neural networks (ANNs) are a family of models 
	inspired by biological neural networks, which are used to 
	estimate or approximate functions that can depend on a 
	large number of inputs and are generally unknown. ", "General", "DMAN", Time.new - 2 * sec_in_day)
blog.add_post Post.new("Potential",
	"Often times you will hear people speak of accessing their 
	full potential or someone not fully utilizing their potential.
	As humans, how do we truly know where our potential begins
	and where it ends? ", "General", "DMAN", Time.new - 1 * sec_in_day)
blog.add_post Post.new("Dreaming",
	"Dreams of rainbows, dead people, unicorns, and candy rain.
	What do all of these dreams mean? No one truly knows, but 
	research has given us some hints. One theory is that dreams
	are a method that our brain uses to consolidate memories...", "General", "DMAN", Time.new)


get "/" do
	@posts = blog.latest_posts

	erb(:home)
end

get "/post_details/:index" do
	index = params[:index].to_i
	@the_post = blog.latest_posts[index]
	erb(:post_details)
end

get "/new_post" do

	erb(:new_post)
end

post "/create_post" do
	new_post = Post.new( params[:title], params[:text], params[:category], params[:author])

	blog.add_post( new_post )
	redirect to("/")
end


