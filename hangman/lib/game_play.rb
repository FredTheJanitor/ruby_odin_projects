class GamePlay

  # takes the output of word picker's selected word
  def initialize(selected_word)
    @selected_word = selected_word
    @guess_number = 0
    @guess_wrong = 0
    @guess_list = []
    @board_blanks = []
    @board_hits = []
  end

  def take_turn(guess)
    @guess_number += 1
    @guess_wrong += 1 unless @selected_word.include? guess
    @guess_list.push guess
  end




end
