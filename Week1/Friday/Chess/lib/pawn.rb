require_relative("piece.rb")

class Pawn < Piece

	def can_move?(final_x, final_y, color)
		@fx = (final_x - @spos_x).abs
		@fy = (final_y - @spos_y).abs
		@color = color

		if @color == "white"
			if @spos_y == 2 && (@fy == 2 || @fy == 1) && @fx == 0
				true
			elsif @spos_y > 2 && @fy == 1 && @fx == 0
				true
			else
				false
			end
		

		elsif @color == "black"
			if @spos_y == 7 && (@fy == 2 || @fy == 1) && @fx == 0
				true
			elsif @spos_y < 7 && @fy == 1 && @fx == 0
				true
			else
				false
				
			end
		
		end
	end

	# def direction?
	# 	if @color == "white" && @fy > 0
	# 		true
	# 	elsif @color == "black" && @fy < 0
	# 		true
	# 	else
	# 		false
	# 	end
	# end

	# def amount_of_spaces?
	# 	if @color == "white" 
	# 		first_move = true
	# 	else 
	# 		first_move = false
	# 	end
	# end
end