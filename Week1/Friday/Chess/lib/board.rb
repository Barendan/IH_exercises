require_relative("piece.rb")

class Board < Piece
	attr_accessor(:pieces_arr)

	def initialize
		@pieces_arr = [nil, [], [], [], [], [], [], [], [] ]
	end

	def add_piece(piece)
		x = piece.x
		y = piece.y
		@pieces_arr[x][y] = piece
	end

	def can_move?(start_x, start_y, final_x, final_y)

		piece = @pieces[start_x][start_y]

    	if start_x == final_x && start_y == final_y
      	false
    	elsif start_x > 8 || start_x < 1 || final_x > 8 ||
    		  final_y < 1 || start_y < 1 || start_x > 8 ||
    		  final_x < 1 || final_y > 8 
      	false
    	elsif piece.can_move?(final_x, final_y)
     	true
     	elsif piece == nil
     	false
    	else
		false
		end
	end
end





