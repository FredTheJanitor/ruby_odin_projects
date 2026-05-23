class CodeBreakerLogic
  attr_reader :guess_history, :guess_number
  
  @@guess_history = []
  @@guess_number = 0
  
  def self.guess_history
    @@guess_history
  end
  def self.guess_number
    @@guess_number
  end
  
  def initialize
    @guess_row = []
    @@guess_number += 1
  end
  def guess_row(user_guess_row)
    @guess_row = []
    @guess_row = user_guess_row
    @@guess_history.push(@guess_row)
  end
  def reset_codebreaker
    @@guess_history = []
    @@guess_number = 0
  end
end