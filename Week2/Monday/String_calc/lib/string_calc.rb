
class String_calc

	def add(numbers_string)
		chars = numbers_string.split(",")
		num = chars.map do |c|
			c.to_i
		end
		if numbers_string == ""
			0
		else
		num[0..10].reduce(:+)
	end
	end

end