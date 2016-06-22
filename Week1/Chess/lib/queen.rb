require_relative(lib/piece.rb)

class Queen < Piece

	def can_move?(final_x, final_y)
		fx = (final_x - @spos_x).abs
		fy = (final_y - @spos_y).abs

		if fx == fy || fx == 0 || fy == 0 ||
			(fx == 0 || fx == 1) && (fy == 0 || fy == 1)
				true
			else
				false
		end
	end
end
