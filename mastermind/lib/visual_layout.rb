
# puts "\e[4mThis text is underlined\e[0m"

class VisualLayout
  def initialize
    @board = puts "\e[4m|?|?|?|?|\n
                        | | | | |-[ ][ ][ ][ ]\n
                        | | | | |-[ ][ ][ ][ ]\n
                        | | | | |-[ ][ ][ ][ ]\n
                        | | | | |-[ ][ ][ ][ ]\n
                        | | | | |-[ ][ ][ ][ ]\n
                        | | | | |-[ ][ ][ ][ ]\n
                        | | | | |-[ ][ ][ ][ ]\n
                        | | | | |-[ ][ ][ ][ ]\n
                        | | | | |-[ ][ ][ ][ ]\n
                        | | | | |-[ ][ ][ ][ ]\n
                        |*|*|*|*|-[HINT KEYS!]\n\e[0m"
                        # I need a way to inject the 
                        # guesses more seemlessly into 
                        # the board
    
  end
end