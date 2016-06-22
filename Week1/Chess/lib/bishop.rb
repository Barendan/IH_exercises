require_relative(lib/piece.rb)

class Bishop < Piece

	def can_move?(final_x, final_y)
		fx = (final_x - @spos_x).abs
		fy = (final_y - @spos_y).abs

		if fx == fy
				true
			else
				false
	end
end
end
