class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  caro = Home.new("Caro's place", "Miami Beach", 2, 42),
  fed = Home.new("Federico's place", "Naples", 5, 47),
  jon = Home.new("Jon's place", "Kendall", 3, 41),
  daniel = Home.new("Daniel's place", "Hollywood", 2, 33),
  carl = Home.new("Carl's place", "Orlando", 4, 49),
  jamie = Home.new("Jamie's place", "Dubai", 7, 75),
  max = Home.new("Max's place", "Moscow", 2, 29),
  antonio = Home.new("Antonio's place", "Zurich", 5, 41),
  jeff = Home.new("Jeff's place", "Prague", 2, 25),
  alex = Home.new("Alex's place", "London", 3, 56)
]

array_of_homes = [caro, fed, jon, daniel, carl, jamie, max, antonio, jeff, alex]

def print_homes(array)
  array.each do | home |
    puts "Name: #{home.name} |  City: #{home.city} |  
    Max Capacity: #{home.capacity} | Price: #{home.price}"  
  end
end

input = nil
while input != "exit"
  puts "\nType [list], [price], [capacity], for different sortings:"
  puts "What is your selection?"
  input = gets.chomp

  if input == "list"
    low_price = array_of_homes.sort_by { |l| l.price }
    print_homes(low_price)
    
  elsif input == "price"
    high_price = array_of_homes.sort { |home_a, home_b| home_b.price <=> home_a.price }
    print_homes(high_price)
    
  elsif input == "capacity"
    by_capacity = array_of_homes.sort_by { |c| c.capacity }
    print_homes(by_capacity)
    
  else
    puts "Wat."
  end
end


array_printer(s_price)


# homes.each do |hm|
#   p hm.name + " in " + hm.city 
#   p "Price: $#{hm.price} a night"
# end



# puts "Which city will you be staying in?"
# s_city = gets.chomp
# sort_c = homes.select do |hm|
#   hm.city == s_city
# end
# array_printer(sort_c)


