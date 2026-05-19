class BoardSquare
  attr_accessor :player, :space_number

  @@x_list = []
  @@o_list = []
  @@picked_boardsquares = []
  @@number_of_plays = 0
  def self.check_for_wins
    # Need to check xlist and olist for wins, not all boardsquares.
    if @@picked_boardsquares.include? 4
      four_win_condition1 = [1, 4, 7]
      four_win_condition2 = [4, 5, 6]
      return 4 if (four_win_condition1 - @@x_list).empty?
      return 4 if (four_win_condition2 - @@x_list).empty?

      return 4 if (four_win_condition1 - @@o_list).empty?
      return 4 if (four_win_condition2 - @@o_list).empty?
    end
    if @@picked_boardsquares.include? 2
      two_win_condition1 = [1, 2, 3]
      two_win_condition2 = [2, 5, 8]
      return 2 if (two_win_condition1 - @@x_list).empty?
      return 2 if (two_win_condition2 - @@x_list).empty?

      return 2 if (two_win_condition1 - @@o_list).empty?
      return 2 if (two_win_condition2 - @@o_list).empty?
    end
    if @@picked_boardsquares.include? 9
      nine_win_condition1 = [3, 6, 9]
      nine_win_condition2 = [1, 5, 9]
      nine_win_condition3 = [7, 8, 9]
      return 9 if (nine_win_condition1 - @@x_list).empty?
      return 9 if (nine_win_condition2 - @@x_list).empty?
      return 9 if (nine_win_condition3 - @@x_list).empty?

      return 9 if (nine_win_condition1 - @@o_list).empty?
      return 9 if (nine_win_condition2 - @@o_list).empty?
      return 9 if (nine_win_condition3 - @@o_list).empty?
    end
    return unless @@picked_boardsquares.include? 7

    seven_win_condition = [7, 5, 3]
    return 7 if (seven_win_condition - @@x_list).empty?

    7 if (seven_win_condition - @@o_list).empty?
  end

  def initialize(player, space_number)
    @player = player
    @space_number = space_number
    @@number_of_plays += 1
    @move_number = @@number_of_plays
    @@picked_boardsquares.push(space_number)
    if player == 'x'
      @@x_list.push(space_number)
    else
      @@o_list.push(space_number)
    end
  end

  def clear_board
    @@picked_boardsquares = []
  end

  def check_who_won(space)
    return 'Player X' if @@x_list.include? space
    return unless @@o_list.include? space

    'Player O'
  end
end
