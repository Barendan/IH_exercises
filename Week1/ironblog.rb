class Post
	attr_accessor(:title, :date, :text)
	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
	end
	
	def print
		puts @title
		puts "------------"
		puts @text
		puts ""
		puts "==============="
		puts ""
	end
end

class Blog

	def initialize
		@posts = []	
		@page_start = 0
		@page_end = 2
	end
	
	def add_post(new_post)
		@posts.push(new_post)
	end

	def publish_front_page
		@posts.each do | post |
			post.print
		end
	end
	
	def go_next
		@page_start += 3
		@page_end += 3
	end
	
	def go_prev
		@page_start -= 3
		@page_end -= 3
	end
	
	def print_current_page
		current_posts = @posts[@page_start..@page_end]
		current_posts.each do |post|
			post.print
		end
	end
	
end

#================================================================


seconds_in_day = 60 * 60 * 24

the_blog = Blog.new
the_blog.add_post Post.new("First Post!", Time.now - 2 * seconds_in_day, "This is my first post")
the_blog.add_post Post.new("Second Post!", Time.now - 1 * seconds_in_day, "This is my second post")
the_blog.add_post Post.new("Third Post!", Time.now, "This is my third post")
the_blog.add_post Post.new("Great Post", Time.now - 3 * seconds_in_day, "This is a great post")
the_blog.add_post Post.new("A Creative Post", Time.now - 4 * seconds_in_day, "This is a creative post")
the_blog.add_post Post.new("One of a Kind", Time.now - 5 * seconds_in_day, "This is my second post")

the_blog.print_current_page

input = nil

while input != "exit"
	puts "\nType [next] to see the next page"
	input = gets.chomp
	
	if input == "next"
		the_blog.go_next
	elsif input == "prev"
		the_blog.go_prev
	end
		the_blog.print_current_page
end





