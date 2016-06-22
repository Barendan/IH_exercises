require_relative(lib/piece.rb)

class Pawn < Piece

	def can_move?(final_x, final_y, color)
		@fx = (final_x - @spos_x).abs
		@fy = final_y - @spos_y
		@color = color

    	if @fx == 0 &&
       		direction? &&
       		amount_of_spaces?
      		true
    	else
			false
		end
	end

	def direction?
		if @color == "white" && @fy > 0
			true
		elsif @color == "black" && fy < 0
			true
		else
			false
		end
	end

	def amount_of_spaces?
		if @color == "white" 
			first_move = true
		else 
			first_move = false
		end

		if fy.abs == 1
			true
		elsif first_move == true && fy.abs == 2
			true 
		else
			false
		end
	end
end