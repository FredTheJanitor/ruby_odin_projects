class UserInterface
  def initialize
    @guess_row = []
  end
  def input_num_1_6
    user_input = 0
    loop do 
      user_input = gets.chomp.to_i
      break if user_input == [1..6].any?
      puts 'Error: Type any integer 1-6'
    end
    user_input
  end
end