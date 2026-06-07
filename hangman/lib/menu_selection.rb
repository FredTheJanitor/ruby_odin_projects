class MenuSelection
  attr_reader :new_game
  
  def initialize(new_game = true)
    @new_game = new_game
  end
  
  def list_games
    # use dir or file methods to get array of memory files
    game_list = []
  end
  
end