class Shopping
	def cart
		@cart = cart
	end

	def add_item_to_cart
		
	end
end

cart = ShoppingCart.new

cart.add_item_to_cart :apple
cart.add_item_to_cart :banana
cart.add_item_to_cart :banana

cart.show
1 apple: 10$
2 bananas: 40$

cart.cost = 50


# apples     10$
# oranges     5$
# grapes     15$
# banana     20$
# watermelon 50$