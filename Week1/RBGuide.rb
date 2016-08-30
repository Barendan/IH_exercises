# LOOPS
for x in 1..100

	if x % 3 == 0
	puts "fizz"
	elsif x % 5 == 0
	puts "buzz"
	else
	puts "#{x}"
	end
end

[1,2,3,4,5].each do |number|
  # do something with number
end

while conditional
  break # terminate the current loop
  next  # skip to the next iteration of the loop
  redo  # restart the current iteration
end


#ENUMERABLES
    You can use each for pretty much every task you have to do with arrays.
    You can use map to transform all the items in an array to get a new one.
    You can use reduce to accumulate a single value from all the items.
    You can use select to remove items from an array easily.
    You can use find to pick out a single item in an array.
    You can use sort to change the order of an array.


sum = prices.reduce(:+)
avg = sum / prices.length
puts avg


# Homes in San Juan
san_juan_homes = homes.select do |hm|
  # Keep hm only if its city is "San Juan"
  hm.city == "San Juan"
end
# Homes with capacity 4 or more
high_capacity_homes = homes.select do |hm|
  # Keep hm only if its capacity is 4 or greater
  hm.capacity >= 4
end
home_41_dollars = homes.find do |hm|
  # Is hm's price $41?
  hm.price == 41
end
puts "The first home that costs $41 is:"
puts home_41_dollars.name

sorted = homes.sort do |home1, home2|
  # Compare the two homes by their capacity
  home1.capacity <=> home2.capacity
end
# also sort by name 
sorted = homes.sort do |home1, home2|
  # Compare the two homes by their name
  home1.name <=> home2.name
end



#METHODS/CLASSES

class Speaker
  def initialize
    @utterance = "Hello, World!"
  end

  def speak
    puts @utterance
  end
end

speaker = Speaker.new
speaker.speak
# Hello, World!




"Koala".intern         #=> :Koala
s = 'cat'.to_sym       #=> :cat
s == :cat              #=> true
s = '@cat'.to_sym      #=> :@cat
s == :@cat             #=> true

#DuckTypes, Comp, Modules

# class CarBmw
# 	def wheels
# 		p "Car is driving with 3 wheels" end
# 	def noise
# 		puts "pop pop bang bang" end
# end
# class CarBenz
# 	def wheels
# 	p "Car is driving with 4 wheels" end
# 	def noise
# 		puts "Pssshhhhh" end
# end
cars = [CarBmw.new, CarBenz.new]

cars.each do |c|
	c.noise
	c.wheels
end



