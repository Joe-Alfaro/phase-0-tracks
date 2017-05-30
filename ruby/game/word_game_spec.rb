require_relative "word_game"

describe Word_game do
  let("word_game") {Word_game.new("apple")}

  it "stores a word or phrase in an array" do
    expect(word_game.phrase).to eq ['a', 'p', 'p', 'l', 'e']
  end

  it "stores guesses in array" do word_game.guesses << "b"
    expect(word_game.guesses).to eq ['b']
    word_game.guesses << "c"
    expect(word_game.guesses).to eq ['b', 'c']
  end
end