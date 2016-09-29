class Hangman
attr_reader :secret_arr, :answer_arr, :guesses, :guessed_arr, :gameover

	def initialize(guess_word)
		@secret_arr = guess_word.split("")
		@answer_arr = []
		@guessed_arr = []
		@secret_arr.each do |letter|
			@answer_arr << "_"
		end
		@guesses = guess_word.length + 3
		@display = ""
		@gameover = false
	end

	def guess(letter)
		if !@guessed_arr.include?(letter)
			@guessed_arr << letter
			i = 0
			while i < @secret_arr.length
				if @secret_arr[i] == letter
					@answer_arr[i] = letter
				end
				i += 1
			end
			@guesses -= 1
		else
			return "You've already guessed that letter. Try Again"
		end
	end

	def display
		@display = answer_arr.join(" ")
	end

	def winner?
		if @guesses != 0 && @secret_arr == @answer_arr
			@gameover = true
			return "You Win!"
		elsif @guesses <= 0 
			@gameover = true
			return "You Lose, Loser!"
		else
			return "#{guesses} guesses remaining...choose wisely"
		end
	end

end

# DRIVER CODE

puts "Welcome to a game similar to hangman!"
puts "First player please enter a word for the second player to guess. Please use all lowercase letters"
word = gets.chomp
game =Hangman.new(word)
#adds some spacers so player two won't see the word
puts "-" *30
puts "-" *30
puts "-" *30
puts "-" *30
puts "-" *30
puts "-" *30
puts "-" *30
puts "Second player, guess letters, like 'a', to see if you can guess the word. You have three more chances than there are letters in the word. Please use all lowercase letters."
while !game.gameover
	letter = gets.chomp
	game.guess(letter)
	p game.display
	p game.winner?
end





