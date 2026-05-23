require_relative 'lib/code_breaker_logic'
require_relative 'lib/code_maker_logic'
require_relative 'lib/game_play'
require_relative 'lib/user_interface'
require_relative 'lib/visual_layout'

controller = UserInterface.new
game = GamePlay.new
code_maker = CodeMakerLogic.new
board = VisualLayout.new

10.times do 
  board.print_board
  code_breaker_turn = CodeBreakerLogic.new
  controller.clear_guessrow
  4.times do controller.input_num_1_6 end
  p guess_row = game.codebreaker_turn(controller.guess_row)
  p code_breaker_turn.guess_row(guess_row).flatten
  p hint_keys = code_maker.check_guess_row(p guess_row)
  board.update_board(CodeBreakerLogic.guess_history, CodeBreakerLogic.guess_number, hint_keys)
  game_over_win = game.game_over_win?(code_maker.secret_code, guess_row)
  game_over_turns = game.game_over_turns?
  board.show_code(game.game_over(game_over_turns, game_over_win), code_maker.secret_code)
end




