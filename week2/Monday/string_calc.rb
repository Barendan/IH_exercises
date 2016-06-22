
class String_calc

	def add(numbers_string)
		chars = numbers_string.split(",")
		chars[0].to_i + chars[1].to_i
	end

end


mr_calculator = String_calc.new
p mr_calculator.add("") ==0
p mr_calculator.add("6")== 6
p mr_calculator.add("9")== 9

p mr_calculator.add("5,7") == 12
p mr_calculator.add("4,3") == 7




