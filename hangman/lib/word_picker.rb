# this class basically jsut selects a random word from a file
# and returns it

class WordPicker
  attr_reader :selected_word

  def initialize
    words_array = File.readlines('english_words_9894.txt', chomp: true)
    loop do 
      word = words_array[rand(1..9894)]
      if (5..12).cover? word.length
        @selected_word = word
        return
      end 
    end
  end
end

# test_word = WordPicker.new
# puts test_word.selected_word