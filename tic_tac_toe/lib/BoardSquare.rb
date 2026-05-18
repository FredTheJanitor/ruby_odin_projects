class BoardSquare
  @@picked_boardsquares = []
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
    @@picked_boardsquares.push(space_number)
  end

  def clear_board
    @@picked_boardsquares = []
  end

end