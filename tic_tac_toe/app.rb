require_relative 'lib/BoardSquare'
require_relative 'lib/GameCondition'
require_relative 'lib/TerminalOutput'

board = TerminalOutput.new
board.print_board
board.request_input
game = GameCondition.new
move_one = BoardSquare.new(game.turn, game.player_turn)
board.change_board(move_one.player, move_one.space_number)
board.print_board
game.next_player
board.request_input
move_two = BoardSquare.new(game.turn, game.player_turn)
board.change_board(move_two.player, move_two.space_number)
board.print_board
game.next_player
board.request_input
move_three = BoardSquare.new(game.turn, game.player_turn)
board.change_board(move_three.player, move_three.space_number)
board.print_board
game.next_player
board.request_input
move_four = BoardSquare.new(game.turn, game.player_turn)
board.change_board(move_four.player, move_four.space_number)
board.print_board
game.next_player
board.request_input
move_five = BoardSquare.new(game.turn, game.player_turn)
board.change_board(move_five.player, move_five.space_number)
board.print_board
board.request_input
if BoardSquare.check_for_wins
  board.game_over(move_five.check_who_won(BoardSquare.check_for_wins))
end
game.next_player
move_six = BoardSquare.new(game.turn, game.player_turn)
board.change_board(move_six.player, move_six.space_number)
board.print_board
board.request_input
if BoardSquare.check_for_wins
  board.game_over(move_six.check_who_won(BoardSquare.check_for_wins))
end
game.next_player
move_seven = BoardSquare.new(game.turn, game.player_turn)
board.change_board(move_seven.player, move_seven.space_number)
board.print_board
board.request_input
if BoardSquare.check_for_wins
  board.game_over(move_seven.check_who_won(BoardSquare.check_for_wins))
end
game.next_player
move_eight = BoardSquare.new(game.turn, game.player_turn)
board.change_board(move_eight.player, move_eight.space_number)
board.print_board
board.request_input
if BoardSquare.check_for_wins
  board.game_over(move_eight.check_who_won(BoardSquare.check_for_wins))
end
game.next_player
move_nine = BoardSquare.new(game.turn, game.player_turn)
board.change_board(move_nine.player, move_nine.space_number)
board.print_board
board.request_input
if BoardSquare.check_for_wins
  board.game_over(move_nine.check_who_won(BoardSquare.check_for_wins))
end
board.game_over unless BoardSquare.check_for_wins 