# I think we only call this when we load a save game
# maybe the idea of serialization is that i dont have to do all
# this and can just save the game_play class maybe?
class Memory
  # when a new memory is created it should load the yaml translated output from menu_selection
  def initialize(menu_selection = [], selected_word = nil, guess_number = 0, guess_wrong = 0, board_blanks = [], board_hits = [])
    @menu_selection = meunu_selection
    @selected_word = selected_word
    @guess_number = guess_number
    @guess_wrong = guess_wrong
    @board_blanks = board_blanks
    @board_hits = board_hits
  end

  # this method will gather the necessary info to reload the game
  # and return it in an array
  def capture_state#parameters will be whatever files these variables live in
    selected_word = #file varibale path somehow
    @selected_word = selected_word

    guess_number = #file varibale path somehow
    @guess_number = guess_number

    guess_wrong = #file varibale path somehow
    @guess_wrong = guess_wrong

    board_blanks = #file varibale path somehow
    @board_blanks = board_blanks

    board_hits = #file varibale path somehow
    @board_hits = board_hits
    
    instance_variables
  end

  # this method will convert the array to yaml and put it in a file
  # with a game name
  def save_game(capture_state)
    instance_variables # to yaml
    file_name = "#{gets.chomp}.yaml"
  end
  
  # this method will take the raw ruby directly translated
  # from yaml and organize it into instance variables for 
  # a clean array return of instance_variables
  def load_game()
    # take menu_selection and get needed variables
    @selected_word = @menu_selection[]
    @guess_number = @menu_selection[]
    @guess_wrong = @menu_selection[]
    @board_blanks = @menu_selection[]
    @board_hits = @menu_selection[]

    instance_variables
  end


end