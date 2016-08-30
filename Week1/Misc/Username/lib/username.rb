class Username
	include Password
	def request_username
		puts "Please log in you motha sucka.."

		puts ""
		puts "Username:"

		username = gets.chomp

		puts ""
		puts "Hello, #{username}!"

	end

	def magic_text
		if @password_check == true
		puts ""
		puts "Enter some text for magic to happen to:"
		text = gets.chomp
		puts "The secret codex has #{text.split.length} words in it."
	else
	
	end
end

end