class Post
	attr_accessor(:title, :text, :date)
	def initialize(title, text, category, author, date = Time.now)
		@title = title
		@text = text
		@category = category
		@author = author
		@date = date
	end

	def title
	    @title
	end

	def date
	    @date
	end

	def text
	    @text
	end

	def category
		@category
	end

	def author
		@author
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