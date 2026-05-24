require_relative 'lib/code_breaker_logic'
require_relative 'lib/code_maker_logic'
require_relative 'lib/game_play'
require_relative 'lib/user_interface'
require_relative 'lib/visual_layout'

controller = UserInterface.new
game = GamePlay.new
code_maker = CodeMakerLogic.new
board = VisualLayout.new
board.introduction
game.select_game_mode(controller.select_one_or_two)

if game.game_mode == "H"
  board.human_guess_mode
  code_maker.make_secret_code(game.game_mode)
  10.times do 
    board.print_board
    code_breaker_turn = CodeBreakerLogic.new
    controller.clear_guessrow
    4.times do controller.input_num_1_6 end
    guess_row = game.codebreaker_turn(controller.guess_row)
    code_breaker_turn.guess_row(guess_row).flatten
    hint_keys = code_maker.check_guess_row(guess_row)
    board.update_board(CodeBreakerLogic.guess_history, CodeBreakerLogic.guess_number, hint_keys)
    game_over_win = game.game_over_win?(code_maker.secret_code, guess_row)
    game_over_turns = game.game_over_turns?
    board.show_code(game.game_over(game_over_turns, game_over_win), code_maker.secret_code)
  end
end

if game.game_mode == "C"
  board.computer_guess_mode
  4.times do controller.input_num_1_6 end
  code_selection = controller.guess_row
  code_maker.make_secret_code(game.game_mode, code_selection)
  10.times do
    puts "computer thinking..."
    puts "\t(not really im literally just pausing the program)"
    sleep 2 
    board.print_board
    code_breaker_turn = CodeBreakerLogic.new
    controller.clear_guessrow
    4.times do controller.cpu_input_num_1_6 end
    guess_row = game.codebreaker_turn(controller.guess_row)
    code_breaker_turn.guess_row(guess_row).flatten
    hint_keys = code_maker.check_guess_row(guess_row)
    board.update_board(CodeBreakerLogic.guess_history, CodeBreakerLogic.guess_number, hint_keys)
    game_over_win = game.game_over_win?(code_maker.secret_code, guess_row)
    game_over_turns = game.game_over_turns?
    board.show_code(game.game_over(game_over_turns, game_over_win), code_maker.secret_code)
  end
end





