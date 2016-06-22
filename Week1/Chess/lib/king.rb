require_relative(lib/piece.rb)

class King < Piece

	def can_move?(final_x, final_y)
		fx = (final_x - @spos_x).abs
		fy = (final_y - @spos_y).abs

		if (fx == 0 || fx == 1) && (fy == 0 || fy == 1)
				true
			else
				false
	end
end
end