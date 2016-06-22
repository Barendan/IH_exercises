require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/knight.rb")
require_relative("lib/bishop.rb")
require_relative("lib/piece.rb")
require_relative("lib/board.rb")


black_rook_right = Rook.new(8, 8, "black")

puts "Rook Tests"
p black_rook_right.can_move?(8, 5) == true
p black_rook_right.can_move?(1, 8) == true
p black_rook_right.can_move?(5, 5) == false
p black_rook_right.can_move?(3, 6) == false


black_king = King.new(5, 8, "black")

puts "King Tests"
p black_king.can_move?(6, 7) == true 
p black_king.can_move?(5, 7) == true
p black_king.can_move?(4, 7) == true
p black_king.can_move?(4, 3) == false
p black_king.can_move?(6, 2) == false


black_bishop_left = Bishop.new(3, 8, "black")

puts "Bishop Tests"
p black_bishop_left.can_move?(4, 7) == true 
p black_bishop_left.can_move?(5, 6) == true
p black_bishop_left.can_move?(6, 5) == true
p black_bishop_left.can_move?(2, 7) == true
p black_bishop_left.can_move?(1, 6) == true


black_bishop_right = Bishop.new(6, 8, "black")

puts "Bishop Tests"
p black_bishop_right.can_move?(7, 7) == true 
p black_bishop_right.can_move?(8, 6) == true
p black_bishop_right.can_move?(5, 7) == true
p black_bishop_right.can_move?(6, 7) == false
p black_bishop_right.can_move?(4, 5) == false


black_knight_left = Knight.new(2, 8, "black")

puts "Knight Tests"
p black_knight_left.can_move?(1, 6) == true 
p black_knight_left.can_move?(3, 6) == true
p black_knight_left.can_move?(4, 7) == true
p black_knight_left.can_move?(4, 8) == false
p black_knight_left.can_move?(6, 8) == false


black_knight_right = Knight.new(7, 8, "black")

puts "Knight Tests"
p black_knight_right.can_move?(8, 6) == true 
p black_knight_right.can_move?(6, 6) == true
p black_knight_right.can_move?(5, 7) == true
p black_knight_right.can_move?(4, 8) == false
p black_knight_right.can_move?(6, 8) == false


black_queen = Queen.new(4, 8, "black")

puts "Queen Tests"
p black_queen.can_move?(4, 7) == true 
p black_queen.can_move?(1, 5) == true
p black_queen.can_move?(7, 5) == true
p black_queen.can_move?(4, 4) == true
p black_queen.can_move?(5, 6) == false


black_pawn = Pawn.new(1, 7, "black")

puts "Black Pawn Tests"
p black_pawn.can_move?(1, 6, "black") == true 
p black_pawn.can_move?(1, 5, "black") == true
p black_pawn.can_move?(1, 3, "black") == false
p black_pawn.can_move?(4, 8, "black") == false
p black_pawn.can_move?(6, 8, "black") == false


white_pawn = Pawn.new(1, 2, "white")

puts "White Pawn Tests"
p white_pawn.can_move?(1, 3, "white") == true 
p white_pawn.can_move?(1, 4, "white") == true
p white_pawn.can_move?(1, 7, "white") == false
p white_pawn.can_move?(4, 8, "white") == false
p white_pawn.can_move?(6, 8, "white") == false


bPn = Pawn.new(1,7, "black")
bPn = Pawn.new(2,7, "black")
bPn = Pawn.new(3,7, "black")
bPn = Pawn.new(4,7, "black")
bPn = Pawn.new(5,7, "black")
bPn = Pawn.new(6,7, "black")
bPn = Pawn.new(7,7, "black")
bPn = Pawn.new(8,7, "black")

wPn = Pawn.new(1,2, "white")
wPn = Pawn.new(2,2, "white")
wPn = Pawn.new(3,2, "white")
wPn = Pawn.new(4,2, "white")
wPn = Pawn.new(5,2, "white")
wPn = Pawn.new(6,2, "white")
wPn = Pawn.new(7,2, "white")
wPn = Pawn.new(8,2, "white")

bRl = Rook.new(1,8, "black")
bRr = Rook.new(8,8, "black")
wRl = Rook.new(1,1, "white")
wRr = Rook.new(8,1, "white")
bNl = Knight.new(2,8, "black")
bNr = Knight.new(7,8, "black")
wNl = Knight.new(2,1, "white")
wNr = Knight.new(7,1, "white")
bBl = Bishop.new(3,8, "black")
bBr = Bishop.new(6,8, "black")
wBl = Bishop.new(3,1, "white")
wBr = Bishop.new(6,1, "white")
bQ = Queen.new(4,8, "black")
wQ = Queen.new(4,1, "white")
bK = King.new(5,8, "black")
wK = King.new(5,1, "white")

my_board = Board.new
# my_board.add_piece(bPn)
my_board.add_piece(bRl)
my_board.add_piece(bRr)
my_board.add_piece(bNl)
my_board.add_piece(bNr)
my_board.add_piece(bBl)
my_board.add_piece(bBr)
my_board.add_piece(bQ)
my_board.add_piece(bK)

my_board.add_piece(wPn)
my_board.add_piece(wRl)
my_board.add_piece(wRr)
my_board.add_piece(wNl)
my_board.add_piece(wNr)
my_board.add_piece(wBl)
my_board.add_piece(wBr)
my_board.add_piece(wQ)
my_board.add_piece(wK)
























# pieces = [nil, [], [], [], [], [], [], [], [] ]

# pieces[1][8] = black_rook_left
# pieces[2][8] = black_knight_left
# pieces[3][8] = black_bishop_left
# pieces[4][8] = black_queen
# pieces[5][8] = black_king
# pieces[6][8] = black_bishop_right
# pieces[7][8] = black_knight_right
# pieces[8][8] = black_rook_right

# pieces[1][1] = white_rook_left
# pieces[2][1] = white_knight_left
# pieces[3][1] = white_bishop_left
# pieces[4][1] = white_queen
# pieces[5][1] = white_king
# pieces[6][1] = white_bishop_right
# pieces[7][1] = white_knight_right
# pieces[8][1] = white_rook_right





