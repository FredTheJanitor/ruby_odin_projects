class TerminalOutput
  attr_accessor :one, :two, :three, :four, :five, :six, :seven, :eight, :nine
  def initialize
    @one = 1
    @two = 2
    @three = 3
    @four = 4
    @five = 5
    @six = 6
    @seven = 7
    @eight = 8
    @nine = 9
    @winner = "Nobody"
  end
  def print_board
    puts "\e[4m#{@one}|#{@two}|#{@three}\n#{@four}|#{@five}|#{@six}\e[0m\n#{@seven}|#{@eight}|#{@nine}"
  end
  
  def request_input
    puts "_______________________________"
    puts "Pick a Number to Place a Marker"
    puts "-------------------------------"
  end

  def game_over
    puts "_______________________________"
    puts "GAME OVER! #{@winner} wins!"
    puts "-------------------------------"
  end


end