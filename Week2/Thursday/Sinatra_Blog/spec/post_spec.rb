require_relative("../models/post.rb")

RSpec.describe Post do
	before(:each) do 
	@post1 = Post.new("Fourth Kind","There, is the content displayed.",Time.new)
	@post2 = Post.new("Third One","Where, here is the content displayed.",Time.new)
	end

	it("#title returns title") do
	expect(@post1.title).to eq("Fourth Kind")
	expect(@post2.title).to eq("Third One")
	end
	it("#text returns text") do
	expect(@post1.text).to eq("There, is the content displayed.")
	expect(@post2.text).to eq("Where, here is the content displayed.")	
	end
end

