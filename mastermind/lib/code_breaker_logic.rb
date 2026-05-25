class CodeBreakerLogic
  attr_reader :guess_history, :guess_number
  
  @@guess_history = []
  @@hint_history = []
  @@guess_number = 0
  @@dont_guess = []
  @@keep_guessing = []
  @@guess_in_place = []
  
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
    @guess_row = []
  end
  def reset_codebreaker
    @@guess_history = []
    @@guess_number = 0
  end

  def cpu_thoughts
    # opt out numbers as we go
    # need to capture position and number for guess history
    #   or is this already built into the array? 
    @@keep_guessing = @@keep_guessing - @@dont_guess
    @@guess_in_place = @@guess_in_place - @@dont_guess
    # maybe make a turn strategy so it isnt just based on feedback?
    return [1,1,2,2] if @@guess_number == 1
    return [3,3,4,4] if @@guess_number == 2
    return [5,5,6,6] if @@guess_number == 3
    # if the hint feedback is all 'o's do not use those numbers
    # from the previous_guess anymore
    # 
    # Need to DEFINE HINT FEEDABCK to pertain to corresponding guess_line
    # probably using indexing of guess_hsitory & hint_history
    # Need to DEFINE PREVIOUS GUESS based on GUESS HISTORY
    if hint_feedback == ["o"]*4
      @@dont_guess.concat(previous_guess)
    end
    if hint_feedback.include?("!")
      @@guess_in_place.concat(previous_guess)
    end
    if hint_feedback.include("x")
      @@keep_guessing.concat(previous_guess)
    end
    # @@dont_guess = []
    # @@keep_guessing = []
    # @@guess_in_place = []
    # when something is added to don't guess it will need to be removed
    # from keep_guessing
    #
    
    # 
    # if the hint feedback contains one ! try one number in the same position
    # should I make some sort of queue for this? like to keep checking until
    # theyre in the dont guess section?
    # 
    # if the hint feedback contains x keep guessing those numbers in other places
    # 
    
  end
end