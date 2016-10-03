=begin
Copied instructions stright from assignment:

Assume your driver code will handle input and output as far as the user is concerned. In other words, write a class designed for a computer program to use, not one designed for a human to use directly, then use driver code to bridge the gap between human and Ruby object.

One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
Guesses are limited, and the number of guesses available is related to the length of the word.
Repeated guesses do not count against the user.
The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
The user should get a congratulatory message if they win, and a taunting message if they lose.

A. WordGame Class

#####Attributes

inputted_word (attr_reader)
guessed_letter (attr_accessor) The letter that is currently guessed
num_guesses (attr_reader) which will equal inputted_word.length
win (attr_reader) = only turns on if/when all letters are filled in
inputted_word


#####Instance Methods
def initialize: Will set conditions in motion as game is initialized.
  1) @guessed_letter == nil (initial conditions)
  2) @win == false
  3) @inputted_word, user specified
  4) @num_guesses == length of inputted_word



def guess_count: num_guesses will decrease by one with each guess unless guess is correct or unless guess is repeated

def user_display_wordstate: word will start off replacing each letter with a _, and with each correct guess, replace _ with the correctly guessed letter

def game_state: keeps win = false until all letters are guessed correctly AND guess_count > 0.  In this new case win becomes true.

def messages: if win == true, print a winning message.  If win == false AND guess_count == 0, print a losing message



B. Driver code
1)Ask user 1 to enter word (stored as part of WordGame Class)
2)Ask user 2 to guess a letter
3)Print specific wordstate
4)Print number of guesses remaining
USE Class method to repeat 2-4 until outcome of game is decided
5) When decided, print message (winning/losing)

=end

