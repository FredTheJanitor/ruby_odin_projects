# frozen_string_literal: true

require_relative 'lib/board_square'
require_relative 'lib/game_condition'
require_relative 'lib/terminal_output'

board = TerminalOutput.new
board.print_board
board.request_input
game = GameCondition.new
9.times do
  move = BoardSquare.new(game.turn, game.player_turn)
  board.change_board(move.player, move.space_number)
  board.print_board
  board.request_input
  board.game_over(move.check_who_won(BoardSquare.check_for_wins)) if BoardSquare.check_for_wins
  game.next_player
end
board.game_over unless BoardSquare.check_for_wins
