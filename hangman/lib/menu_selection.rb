class MenuSelection
  def initialize(new_game = true)
    @new_game = new_game
  end
  
  def list_games
    # use dir or file methods to get array of memory files
    game_list
  end

  

# game name will be a name of a yaml file and this will translate
# into the path or however we select that
  def select_game
    game_name = gets.chomp
    "#{game_name}.yaml"#to path or something or maybe this is fine
  end

  
end