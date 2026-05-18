class BoardSquare
  attr_accessor :player, :space_number
  @@x_list = []
  @@o_list = []
  @@picked_boardsquares = []
  @@number_of_plays = 0
  def self.check_for_wins
    if @@picked_boardsquares.include? 4
      four_win_condition1 = [1,4,7]
      four_win_condition2 = [4,5,6]
      return 4 if (four_win_condition1 - @@picked_boardsquares).empty?
      return 4 if (four_win_condition2 - @@picked_boardsquares).empty?
    end
    if @@picked_boardsquares.include? 2
      two_win_condition1 = [1,2,3]
      two_win_condition2 = [2,5,8]
      return 2 if (two_win_condition1 - @@picked_boardsquares).empty?
      return 2 if (two_win_condition2 - @@picked_boardsquares).empty?
    end
    if @@picked_boardsquares.include? 9
      nine_win_condition1 = [3,6,9]
      nine_win_condition2 = [1,5,9]
      nine_win_condition3 = [7,8,9]
      return 9 if (nine_win_condition1 - @@picked_boardsquares).empty?
      return 9 if (nine_win_condition2 - @@picked_boardsquares).empty?
      return 9 if (nine_win_condition3 - @@picked_boardsquares).empty?
    end
    if @@picked_boardsquares.include? 7
      seven_win_condition = [7,5,3]
      return 7 if (seven_win_condition - @@picked_boardsquares).empty?
    end
  end

  def initialize(player, space_number)
    @player = player
    @space_number = space_number
    @@number_of_plays += 1
    @move_number = @@number_of_plays
    @@picked_boardsquares.push(space_number)
    if player = "x"
      @@x_list.push(space_number)
    else
      @@o_list.push(space_number)
    end

  end

  def clear_board
    @@picked_boardsquares = []
  end

  def check_who_won(space)
    if @@x_list.include? space
      return "Player X"
    end
    if @@o_list.include? space
      return "Player O"
    end
  end

end