# this class basically jsut selects a random word from a file
# and returns it

class WordPicker
  attr_reader :selected_word

  def initialize
    words_array = File.readlines('english_words_9894.txt', chomp: true)
    @selected_word = words_array[rand(1..9894)]
  end
end