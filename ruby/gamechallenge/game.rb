class WordGame

  #what are the behaviors on start up?
  def initialize
    @guess_count = 0
    @is_over = false
    @letters = []
    @word = ""
  end

  def set_word(word)
    @guess_count = word.length
    @word = word
    @letters = Array.new(word.length) {|i| "_" }
    p @letters
  end

  def end_game
    return @guess_count > 0 && @letters.index("_") != nil
  end

  def guess_letter_in_word(letter)
    letter_count = @word.count(letter)
    if letter_count == 0
      @guess_count -= 1
      puts "That letter is not in the word. You have #{@guess_count} guesses left."
    elsif letter_count == 1
      letter_index = @word.index(letter)
      @letters[letter_index] = letter
    else
      for i in 0..@word.length
        if @word[i] == letter
          @letters[i] = letter
        end
      end
    end
    p @letters
  end

  def did_user_win
    if @letters.index("_") == nil
      message = "Congrats, you won!"
    else
      message = "Sorry, you lost."
    end
  end
end


# #user interface
# puts "Welcome to the Word Guessing Game!"
# game = WordGame.new

# puts "Player one, please enter a word."
# word = gets.chomp
# game.set_word(word)

# while game.end_game() do
#   puts "Player two, please guess a letter."
#   letter = gets.chomp
#   game.guess_letter_in_word(letter)
# end

# game.did_user_win()
# puts "Game Over!"