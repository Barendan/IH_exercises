class TextInspectionsController < ApplicationController

	def new
		render 'form'
	end

	def create
		@text = params[:text_inspection][:user_text]

		@word_count = @text.split(" ").length

		words_per_seconds = 275.0 / 60
		@read_time = (@word_count / words_per_seconds).round

		

		word_counts = {}

		smushed_text.downcase.gsub(/[^a-z0-9\s]/i, '')
		words_array = smushed_text.split(" ")

			words_array.each do |the_word|
				if word_counts[the_word] == nil
					word_counts[the_word] = 1
				else
					word_counts[the_word] +=1
				end
			end

		sorted_words = word_counts.sort_by do |the_word, count|
			count
		end

		top_ten = sorted_words.last(10).reverse

		top_ten.each_with_index do |mini_array, index|
			"#{index + 1}. #{mini_array[0]} - #{mini_array[1]}"
		end 

    	render "results"
    end

end






puts "Select either [paragraphs] or [words]:"
option = gets.chomp

amount = 7

quotes = []

if option == "paragraphs"
	paragraps = []

	amount.times do 
		paragraph.push( quotes.sample )
	end

	ipsum_string = paragraphs.join("\n\n")
	puts ipsum_string

elsif option == "words"
	random_quote = quote.sample
	words_array = random_quote.split(" ")

	correct_words = words_array.first(amount)

	ipsum_string = correct_words.join(" ")
end

