class CodeMakerLogic
  def initialize
    @secret_code = [rand(1..6),rand(1..6),rand(1..6),rand(1..6)]
    @hint_keys = []
  end
  def check_guess_row(guess_row)
    @hint_keys = []
    guess_row.each_with_index { |guess, i|
      if guess[i] == @secret_code[i]
        @hint_keys.push(2)
        next
      end
      if @secret_code.any? == guess[i] 
        @hint_keys.push(1)
        next
      end
      @hint_keys.push(0)
    }
    @hint_keys
  end
end