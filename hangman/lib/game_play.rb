class GamePlay

  # takes the output of word picker's selected word
  def initialize(selected_word)
    @selected_word = selected_word.chars
    @guess_number = 0
    @guess_wrong = 0
    @guess_list = []
    @board_hits = Array.new(selected_word.length)
  end

  # takes the output of a user interface input
  # turns input into guess unless it has been guessed
  # already
  def check_input_guess(input)
    guess = input unless guess_list.include? input
  end

  # takes a proper guess and increases the guess number
  # increases the wrong number if wrong & pushes the
  # guess into the guess list
  def process_guess(guess)
    @guess_number += 1
    @guess_wrong += 1 unless @selected_word.include? guess
    @guess_list.push guess
  end

  # remove correct guess from acceptable answer list, and
  # insert the letter at the appropriate indices within
  # board hits for display
  def remove_correct_guess(guess)
    #get indexes of all instances of guess
    correct_indexes = @selected_word.each_index.select { |i| @selected_word[i] == guess }
    correct_indexes.each do |index|
      @board_hits[index] = guess
    end
    @selected_word.delete guess
    
  end

end
