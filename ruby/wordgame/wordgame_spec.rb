require_relative 'wordgame_methods'

describe WordGame do
   let(:game_test) { WordGame.new }

  it "returns an array of letters" do
    expect(word_input_player_one("test")).to eq ["t","e","s","t"]
  end
  it "returns the word itself" do
    expect(game_test.word_input("site")).to eq "site"
  end
end