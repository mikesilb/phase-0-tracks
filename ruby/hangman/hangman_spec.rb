require_relative 'hangman'

describe Hangman do
	it "should store initlized word in secret_arr" do
		game = Hangman.new("unicorn")
		expect(game.secret_arr).to eq ["u","n","i","c","o","r","n"]
	end
end