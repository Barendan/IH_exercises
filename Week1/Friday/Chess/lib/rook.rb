require_relative("piece.rb")

class Rook < Piece

	def can_move?(final_x, final_y)
		fx = (final_x - @spos_x).abs
		fy = (final_y - @spos_y).abs

		if fx == 0 || fy == 0
			true
		else
			false
		end
	end
end


