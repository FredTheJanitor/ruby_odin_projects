class UserInterface
  def initialize
  end

  def get_input
    loop do 
      new_guess = gets.chomp
      return new_guess if new_guess.match?(/[a-zA-Z]/)
    end
  end
  
end