class Milkshake
	attr_reader :base_price, :ingredients
	def initialize
	@base_price = 3
	@ingredients = [ ]
	end
	
	def price_of_milkshake
		total_price_of_milkshake = @base_price
		@ingredients.each do |ingredient|
		total_price_of_milkshake += ingredient.price
		end
		total_price_of_milkshake
	end
	
	def add_ingredient(ingredient)
	@ingredients.push(ingredient)
	end
end

	class Ingredient
 	attr_reader :name, :price
 		def initialize(name, price)
      @name = name
      @price = price
  		end
	end
	
class ShakeShop
	def initialize
		@milkshakes = [ ]
	end
	
	def add_milkshake(milkshake)
		@milkshakes.push(milkshake)
	end
	
	def checkout
		total_price = 0
		@milkshakes.each do | milkshake |
		total_price += milkshake.price_of_milkshake
	end
	total_price
	end
	
end
		
daniels_milkshake = Milkshake.new
oreo = Ingredient.new("Oreo", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
sprinkles = Ingredient.new("Sprinkles", 1)
daniels_milkshake.add_ingredient(oreo)
daniels_milkshake.add_ingredient(chocolate_chips)
daniels_milkshake.add_ingredient(sprinkles)

carls_milkshake = Milkshake.new
banana = Ingredient.new("Banana", 2)
strawberry = Ingredient.new("Strawberry", 2)
rainbow_sprinkles = Ingredient.new("Rainbow Sprinkles", 1)
carls_milkshake.add_ingredient(banana)
carls_milkshake.add_ingredient(strawberry)
carls_milkshake.add_ingredient(rainbow_sprinkles)
	
nizars_milkshake = Milkshake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

myShop = ShakeShop.new
myShop.add_milkshake(daniels_milkshake)
myShop.add_milkshake(carls_milkshake)
myShop.add_milkshake(nizars_milkshake)
puts myShop.checkout


	
