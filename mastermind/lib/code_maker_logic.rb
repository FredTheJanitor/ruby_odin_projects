class CodeMakerLogic
attr_reader :secret_code
  def initialize
    @hint_keys = []
  end
  def make_secret_code(game_mode, secret_code = [])
    if game_mode == "H"
      @secret_code = [rand(1..6),rand(1..6),rand(1..6),rand(1..6)]
    end
    if game_mode == "C"
      @secret_code = secret_code
    end
  end
  def check_guess_row(guess_row)
    @hint_keys = []
    guess_row.each_with_index { |guess, i|
      if guess == @secret_code[i]
        @hint_keys.push("!")
        next
      end
      if @secret_code.include?(guess) 
        @hint_keys.push("x")
        next
      end
      @hint_keys.push("o")
    }
    @hint_keys = @hint_keys.sort
  end
end