require_relative(lib/piece.rb)

class Knight < Piece

	def can_move?(final_x, final_y)
		fx = (final_x - @spos_x).abs
		fy = (final_y - @spos_y).abs

		if (fx == 2 && fy == 1) || (fx == 1 && fy == 2)
				true
			else
				false
	end
end
end