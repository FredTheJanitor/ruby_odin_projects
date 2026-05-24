class GamePlay
  attr_reader :game_mode

  def initialize
    @turn = 0
    @game_over = false
    @guess_row = []
    @game_mode = nil
  end

def select_game_mode(controller_input)
  @game_mode = "H" if controller_input == 1
  @game_mode = "C" if controller_input == 1
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