
class Car
	def initialize(sound)
		@sound = sound
		@list_of_cities = []
	end

	def drive
		puts @sound
	end

	def visit(city)
		list_of_cities.push(city)
		puts "Traveling to planet #{}"
	end

end