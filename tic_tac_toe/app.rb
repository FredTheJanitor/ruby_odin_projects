require_relative 'lib/BoardSquare'
require_relative 'lib/GameCondition'
require_relative 'lib/TerminalOutput'

board = TerminalOutput.new
board.print_board
board.request_input