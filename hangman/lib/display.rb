class Display

  # Here is the standard line break for 
  #   convenience
  #   
  # puts '---------------------------------'

  def intro_text
    puts "Welcome to Hangman Terminal\n---------------------------------"
  end

  def game_selection_text
    puts "\tInstructions:"
    puts "Select a saved game by its Number\nor hit 0 to start a new game"
    puts '---------------------------------'
  end

  def game_start_text(word)
    puts "\tNew Game!"
    puts '_ ' * word.length
    puts "type a letter and we'll tell you\nif its in the word"
    puts '---------------------------------'
  end

  #get game_list from menu_selection to output and display
  def game_selection(game_list)
    # make game_list pretty in console
  end

end