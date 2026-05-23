
# puts "\e[4mThis text is underlined\e[0m"

class VisualLayout
  def initialize
    @board_top = "\e[4m|?|?|?|?|\n
                    -----------[0m"
    @board_rows = array.new(10)
    @board_bottom = "\e[4m|*|*|*|*|-[HINT KEYS!]\e[0m"
    
  end
  def print_board_rows
    # board_rows starts as an array of 10 nil
    # idea is pushing one guess row in at a time
    # then reverse iterating 10 times so blanks
    # are at the top.
    @board_rows.reverse_each { |board_row|
    puts "\e| | | | |-[ ][ ][ ][ ]\n" unless board_row
    if board_row
      
    end
  }
  end
  def update_board(guess_history, guess_number, hint_keys)
    # guess history is an array of arrays
    # each subarray contains the guesses for a turn e.g.
    # [1,2,3,4], # - turn one
    # [2,3,4,5], # - turn two
    # ... etc.
    puts "\e| | | | |-[ ][ ][ ][ ]\n"

  end
  def show_code(game_over)
    case game_over
    when "W"

    when "T"
    end
  end
end