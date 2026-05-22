class GamePlay
  def initialize
    @turn = 0
    @game_over = false
    @guess_row = []
  end
  def codebreaker_turn(user_input)
    4.times do 
      @guess_row.push(user_input)
    end
      @turn += 1
      @guess_row
  end
  def game_over_turns?
    return false unless @turn >= 10
    true
  end
  def game_over_win?(secret_code, guess_code)
    return false unless secret_code == guess_code
    true
  end
  def game_over?(game_over_turns, game_over_win)
    return false unless game_over_turns || game_over_win
    return "T" if game_over_turns
    return "W" if game_over_win
  end
end