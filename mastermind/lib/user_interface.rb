class UserInterface
  attr_reader :guess_row

  def initialize
    @guess_row = []
  end

  def input_num_1_6
    user_input = 0
    loop do 
      user_input = gets.chomp.to_i
      break if (1..6).include?(user_input)
      puts 'Error: Type any integer 1-6'
    end
    @guess_row.push(user_input)
  end

  def clear_guessrow
    @guess_row = []
  end


end