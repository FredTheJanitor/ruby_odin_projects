
# puts "\e[4mThis text is underlined\e[0m"

class VisualLayout
  def initialize
    @board_top = "\e[4m|?|?|?|?|\n-----------\e[0m"
    @board_rows = Array.new(10)
    #board_rows needs to recieve both a guess_row and hint_row
    @board_bottom = "\e[4m|*|*|*|*|-[HINT KEYS!]\e[0m"
    
  end
  def print_board_rows
    # board_rows starts as an array of 10 nil
    # idea is pushing one guess row in at a time
    # then reverse iterating 10 times so blanks
    # are at the top.
    @board_rows.reverse_each { |board_row|
    puts "\e[4m| | | | |-[ ][ ][ ][ ]\e[0m" unless board_row
    puts board_row if board_row
    }
  end
  def update_board(guess_history, guess_number, hint_keys)
    # guess history is an array of arrays
    # each subarray contains the guesses for a turn e.g.
    # [1,2,3,4], # - turn one
    # [2,3,4,5], # - turn two
    # ... etc.
    guess_row = guess_history[guess_number - 1]
    round_hint_keys = hint_keys
    @board_rows[guess_number-1] = 
      "\e[4m|#{guess_row[0]}|#{guess_row[1]}|#{guess_row[2]}|#{guess_row[3]}|-[#{round_hint_keys[0]}][#{round_hint_keys[1]}][#{round_hint_keys[2]}][#{round_hint_keys[3]}]-Turn #{guess_number}\e[0m"

  end
  def print_board
    puts @board_top
    self.print_board_rows
    puts @board_bottom
  end

  def show_code(game_over, secret_code)
    secret_code_top = "\e[4m|#{secret_code[0]}|#{secret_code[1]}|#{secret_code[2]}|#{secret_code[3]}|\n-----------\e[0m"
    if game_over
      @board_top = secret_code_top
      case game_over
      when "W"
        puts "CODE-BREAKER WINS"
      when "T"
        puts "CODE-MAKER WINS"
      end
      self.print_board
      exit
    end
  end
  def introduction
    puts "Welcome to MasterMind Console!"
    puts '---------------------------------'
    puts "\tHint Decoder:"
    puts "! = direct hit"
    puts 'x = hit in wrong space'
    puts 'o = guess not present'
    puts '---------------------------------'
    puts "\tGuess Selection:"
    puts 'Select a number 1-6 and hit enter'
    puts 'Once you have 4 numbers selected,'
    puts 'you will recieve your "Hint-Keys"'
    puts '---------------------------------'
    puts "\tInstructions:"
    puts 'Guess the correct numbers in the'
    puts 'secret code in the correct order'
    puts 'before you run out of turns!'
    puts '---------------------------------'
  end
end