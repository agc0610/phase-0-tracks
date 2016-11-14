require_relative 'game'

describe WordGame do
  let(:game) {WordGame.new}

  it "sets up an array of dashes equal to the number of letters in the word" do
    expect(game.set_word("test")).to eq(["_", "_", "_", "_"])
  end

  it "checks number of guesses and blanks and returns true or false" do
    game.set_word("test")
    expect(game.end_game).to eq true
    game.guess_letter_in_word("t")
    game.guess_letter_in_word("e")
    game.guess_letter_in_word("s")
    expect(game.end_game).to eq false
  end

  it "checks the letter provided by the player and returns the letter(s) if it appears in the word, or keeps the blank if not and reduces the guess count" do
    game.set_word("test")
    expect(game.guess_letter_in_word("t")).to eq(["t", "_", "_", "t"])
    expect(game.guess_letter_in_word("o")).to eq(["t", "_", "_", "t"])
    expect(game.guess_letter_in_word("s")).to eq(["t", "_", "s", "t"])
    expect(game.guess_letter_in_word("e")).to eq(["t", "e", "s", "t"])
  end

  it "checks for blank spaces and if there are none, returns winning message" do
    game.set_word("test")
    game.guess_letter_in_word("t")
    game.guess_letter_in_word("o")
    game.guess_letter_in_word("s")
    game.guess_letter_in_word("e")
    expect(game.did_user_win).to eq("Congrats, you won!")

    game.set_word("test")
    game.guess_letter_in_word("j")
    game.guess_letter_in_word("a")
    game.guess_letter_in_word("q")
    game.guess_letter_in_word("z")
    expect(game.did_user_win).to eq("Sorry, you lost.")
  end

end