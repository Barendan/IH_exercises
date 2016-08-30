class CarBmw

	def wheels
		p "Car is driving with 3 wheels"
	end

	def noise
		puts "pop pop bang bang"
	end
end

class CarBenz
	def wheels
	p "Car is driving with 4 wheels"
	end

	def noise
		puts "Pssshhhhh"
	end
end

#--------------------------------------------

cars = [CarBmw.new, CarBenz.new]

cars.each do |c|
	c.noise
	c.wheels
end