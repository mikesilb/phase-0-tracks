require_relative 'hangman'

describe Hangman do
	let (:game) {Hangman.new("unicorn")}

	#tests initilize
	it "should store initlized word in secret_arr" do
		expect(game.secret_arr).to eq ["u","n","i","c","o","r","n"]
	end

	it "should store '_' * word.length" do
		expect(game.answer_arr).to eq ["_", "_", "_", "_", "_", "_", "_"]
	end

	it "should add initilize guesses = word.length + 3" do
		expect(game.guesses).to eq 10
	end
	#tests guess method
	it "should add a correct letter to answer_arr" do
		game.guess("n")
		expect(game.answer_arr).to eq ["_", "n", "_", "_", "_", "_", "n"]
	end

	it "should add 'n' to the guessed_arr" do
		game.guess("n")
		expect(game.guessed_arr).to eq ["n"]
	end

	it "should subtract 1 from guesses" do
		game.guess("n")
		expect(game.guesses).to eq 9
	end

	it "should return warning message" do
		game.guess("n")
		expect(game.guess("n")).to eq "You've already guessed that letter. Try Again"
	end
	#tests display method
	it "should display the current answer_array" do
		game.guess("n")
		expect(game.display).to eq "_ n _ _ _ _ n"
	end
	#test winner? method
	it "should send winning message" do
		game.guess("u")
		game.guess("n")
		game.guess("i")
		game.guess("c")
		game.guess("o")		
		game.guess("r")
		expect(game.winner?).to eq "You Win!"
	end

	it "should send losing message" do
		game.guess("u")
		game.guess("n")
		game.guess("i")
		game.guess("b")
		game.guess("t")
		game.guess("z")
		game.guess("a")
		game.guess("d")
		game.guess("e")
		game.guess("f")
		expect(game.winner?).to eq "You Lose, Loser!"
	end

	it "should return false" do
		game.guess("u")
		game.guess("n")
		game.guess("i")
		game.guess("b")
		expect(game.winner?).to eq "6 guesses remaining...choose wisely"
	end	
end