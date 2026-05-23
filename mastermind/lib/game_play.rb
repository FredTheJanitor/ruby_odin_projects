class GamePlay

  def initialize
    @turn = 0
    @game_over = false
    @guess_row = []
  end
  #this will take the UserInterface instance user_input method as an argument
  def codebreaker_turn(guess_row)
      @turn += 1
      @guess_row = guess_row
  end
  def game_over_turns?
    return false unless @turn >= 10
    true
  end
  def game_over_win?(secret_code, guess_code)
    return false unless secret_code == guess_code
    true
  end
  def game_over(game_over_turns, game_over_win)
    return false unless game_over_turns || game_over_win
    return "W" if game_over_win
    return "T" if game_over_turns
  end
end