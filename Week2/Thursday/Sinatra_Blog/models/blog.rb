class Blog

	def initialize
		@posts = []	
		@page_start = 0
		@page_end = 2
	end

	def posts
		@posts
	end
	def latest_posts
		@posts.sort_by { |p| p.date }.reverse
	end
	
	def add_post(new_post)
		@posts.push(new_post)
	end




	# def publish_front_page
	# 	@posts.each do | post |
	# 		post.print
	# 	end
	# end
	
	# def go_next
	# 	@page_start += 3
	# 	@page_end += 3
	# end
	
	# def go_prev
	# 	@page_start -= 3
	# 	@page_end -= 3
	# end
	
	# def print_current_page
	# 	current_posts = @posts[@page_start..@page_end]
	# 	current_posts.each do |post|
	# 		post.print
	# 	end
	# end
	
end


# the_blog.print_current_page

# input = nil

# while input != "exit"
# 	puts "\nType [next] to see the next page"
# 	input = gets.chomp
	
# 	if input == "next"
# 		the_blog.go_next
# 	elsif input == "prev"
# 		the_blog.go_prev
# 	end
# 		the_blog.print_current_page
# end