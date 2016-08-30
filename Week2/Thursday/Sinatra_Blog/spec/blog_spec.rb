require_relative("../models/blog.rb")

RSpec.describe Blog do
	before(:each) do
		@blog = Blog.new
	end
	sec_in_day = 60 * 60 * 24

	it("#posts returns empty list of posts") do 
		expect(@blog.posts).to eq([])
	end

	it("#posts returns list of posts") do 
		first = @blog.add_post Post.new("First One","There, where, here is the content displayed.", Time.new)
		
		expect(@blog.posts).to eq(first)
	end

	it("#latest_posts returns a chronologically sorted arr") do 
		hour = @blog.add_post Post.new("Fourth One","There, is the content displayed.",Time.new - 5 * sec_in_day)
		second = @blog.add_post Post.new("Third One","Where, here is the content displayed.",Time.new - 2 * sec_in_day)
		dream = @blog.add_post Post.new("Second One","Here is the content displayed.",Time.new - 7 * sec_in_day)
		team = @blog.add_post Post.new("First One","Without a care, is the content displayed.",Time.new)

		expect(@blog.latest_posts[0]).to eq(@blog.posts[3])
	end

	
end