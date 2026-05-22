class CodeBreakerLogic
  def initialize
    @guess_row = []
    @guess = nil
  end
  def guess_row(user_guess_row)
    @guess_row = user_guess_row
  end
end