# main app where hangman is run
require_relative 'lib/display'
require_relative 'lib/game_play'
require_relative 'lib/memory'
require_relative 'lib/menu_selection'
require_relative 'lib/score_keeper'
require_relative 'lib/user_interface'
require_relative 'lib/word_picker'

screen = Display.new
controller = UserInterface.new
screen.intro_text
screen.game_selection_text
menu =  MenuSelection.new
# menu.list_games
game_pick = controller.menu_input
# menu.pick_game(game_pick)
if menu.new_game
  word_picker = WordPicker.new
  secret_word = word_picker.selected_word
  game = GamePlay.new(secret_word)
  screen.game_start_text(secret_word)
else
  # load old game.
end
loop do
  guess = controller.get_input
  break if game.check_input_guess(guess)
  screen.already_picked(guess)
end
