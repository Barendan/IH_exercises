class Piece
	attr_accessor(:spox_x, :spos_y)
	def initialize(spos_x, spos_y, color)
		@spos_x = spos_x
		@spos_y = spos_y
		@color = color
	end
end