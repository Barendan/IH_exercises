# a_hash = {
# 	:wat => ["j","k", {:wut => ["who", 
# 		 		  				[["i", "j", "k", "l", "m", "n", "o", "p", "q",{:bbq => "chicken", :fry => "meow"}]]]}
# 		]
# }

# puts a_hash[:wat][2][:wut][1][0][9][:bbq]



# arr = [["i","k","g","j","d",{:secret => {:unlock => ["mission","code"]}}], "circle"]

# puts arr[0][5][:secret][:unlock][1]



class CarDealer
	def initialize(inventory)
		@inventory = inventory
	end
end