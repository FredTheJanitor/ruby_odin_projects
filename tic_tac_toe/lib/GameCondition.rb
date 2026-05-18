class GameCondition
  def initialize
    @turn = "x"
    @game_over = false
    @x_won = false
    @o_won = false
    @squares_remaining = 9
    @pickable_numbers = [*1..9]
  end

  def player_turn
    @squares_remaining -= 1
    
    player_choice = loop do
      typed_input = gets.chomp.to_i
      break typed_input if @pickable_numbers.include? typed_input
      puts "Invalid Choice: please pick one of the open squares"
    end

    @pickable_numbers.delete(player_choice)
  end

  def next_player
    if @turn == "x"
      @turn = "o"
    else 
      @turn = "x"
    end
  end
end