module Password
	def verify_password
		puts ""
		puts "Password:"
		password = gets.chomp

		password_store = "boom"
		if password != password_store
			puts "Wrong password. Computer will self destruct in 3...2...1.."
			@password_check = false
		else
			@password_check = true
		end
	end
end