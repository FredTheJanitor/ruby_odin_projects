require_relative 'lib/code_breaker_logic'
require_relative 'lib/code_maker_logic'
require_relative 'lib/game_play'
require_relative 'lib/user_interface'
require_relative 'lib/visual_layout'

controller = UserInterface.new
4.times do controller.input_num_1_6 end
p controller.guess_row







