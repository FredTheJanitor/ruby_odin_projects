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
    puts "_______________________________"
    puts "GAME BOARD:"
    puts "-------------------------------"
    puts "\e[4m#{@one}|#{@two}|#{@three}\n#{@four}|#{@five}|#{@six}\e[0m\n#{@seven}|#{@eight}|#{@nine}"
  end
  
  def request_input
    puts "_______________________________"
    puts "Pick a Number to Place a Marker"
    puts "-------------------------------"
  end

  def game_over(winner = "#{@winner}")
    puts "_______________________________"
    puts "GAME OVER! #{winner} wins!"
    puts "-------------------------------"
    exit
  end

  def play_again
    puts "_______________________________"
    puts "Would you like to play again?"
    puts "-------------------------------"
  end

  def change_board(player, space)
    case space
    when 1
      @one = player
    when 2
      @two = player
    when 3
      @three = player
    when 4
      @four = player
    when 5
      @five = player
    when 6
      @six = player
    when 7
      @seven = player
    when 8
      @eight = player
    when 9
      @nine = player
    end
  end


end