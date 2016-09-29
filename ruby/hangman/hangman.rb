=begin
hangman criteria:
One user can enter a word (or phrase, if you would like your game to support that),
and another user attempts to guess the word.

Guesses are limited, and the number of guesses available is related to the length 
of the word.
Repeated guesses do not count against the user.

The guessing player receives continual feedback on the current state of the word. 
So if the secret word is "unicorn", the user will start out seeing something like 
"_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
The user should get a congratulatory message if they win, and a taunting message if they lose.

Driver code will handle input and output so the methods created in Hangman class
will take in input and return variables
=end

=begin
Pseudocode:

driver code tells user1 to pick a word
	- the word is stored as a string and .SPLIT(" ") into an secret_arr.
		- This is initialize method of Hangman
		- initialize an answer_arr attribute with "_" for the length of secret_arr
		- guesses varialbe = amount of guess based on length of the word
			- guesses = secret_arr.length/2 +1 (just because)
dc tells user2 to start guessing letters of the word
	- guess method of hangman
		- takes a letter as a string
		- index the letter with the array
			- if found store the the guess letter in the index of the answer_arr
					- answer_arr[(the found index)] = letter
			- else guesses -= 1
		- return the answer_arr
=end

class Hangman

	def initialize(guess_word)
		secret_arr = guess_word.split(" ")
		answer_arr = []
		secret_arr.each do
			answer_arr << "_"
		end
		guesses = guess_word.length / 2 + 1
end