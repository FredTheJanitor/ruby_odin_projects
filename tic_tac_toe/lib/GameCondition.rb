class GameCondition
  attr_accessor :turn

  def initialize
    @turn = 'x'
    @game_over = false
    @x_won = false
    @o_won = false
    @squares_remaining = 9
    @pickable_numbers = [*1..9]
    @turn_number = 1
  end

  def player_turn
    @squares_remaining -= 1
    @turn_number += 1
    player_choice = loop do
      typed_input = gets.chomp.to_i
      break typed_input if @pickable_numbers.include? typed_input

      puts 'Invalid Choice: please pick one of the open squares'
    end

    @pickable_numbers.delete(player_choice)
  end

  def next_player
    @turn = if @turn == 'x'
              'o'
            else
              'x'
            end
  end
end
