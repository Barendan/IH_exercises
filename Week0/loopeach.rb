(1..100).each{ |num| 
	if num.to_s[0] == "1"
		puts "Bang"
	elsif num % 3 == 0
		puts "fizz"
	elsif num % 5 == 0
		puts "buzz"
	else
		puts "#{num}"
	end
}

