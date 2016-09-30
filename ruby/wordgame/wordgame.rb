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
  1) @guessed_letter = nil (initial conditions)
  2) @win = false
  3) @inputted_word, user specified
  4) @num_guesses = length of inputted_word


def guess_check: Will determine if guess was correct or not.

Returns true for correct or false if incorrect

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

class WordGame
  attr_reader :inputted_word, :num_guesses, :win, :guessed_count
  attr_accessor :guessed_letter

  def initialize
    @num_guesses = nil
    @inputted_word = nil
    @guessed_letter = nil
    @guess_array = []
    @letter_correct_status = nil
    @win = false
    @display_array = []
 #   @initial_display_array = []
  end

  def word_input_player_one
    puts "Player 1, enter a word for the other player to guess"
    p @inputted_word = gets.chomp
    p @inputted_word_array = @inputted_word.split('')
  end

  def player2_letter_guesses
   p @num_guesses = @inputted_word_array.length
   p @display_array << @inputted_word_array.map { |letter| "_"}

      while !win && @num_guesses > 0
        puts "You have #{@num_guesses} guesses left."
        puts "Player 2, What letter are you planning to guess?"
        @guessed_letter = gets.chomp

        p @inputted_word_array.index(@guessed_letter)
        p @guess_array.index(@guessed_letter)

        if (@inputted_word_array.index(@guessed_letter)) == nil && (@guess_array.index(@guessed_letter)) == nil
          @num_guesses -= 1
          p @display_array
        else
          @display_array[0][@inputted_word_array.index(@guessed_letter)] = @guessed_letter
          p @display_array
        end
        p @guess_array.push(@guessed_letter)

        if @num_guesses == 0
          puts "BWAHAHAHAHAHA YOU LOSE!!!!"
        end
        if @display_array[0].index("_") == nil
          puts "HOLY COW!  YOU ACTUALLY WON THE GAME!!!!!!"
          win
          break
        end
      end

  end
end


test = WordGame.new
test.word_input_player_one
test.player2_letter_guesses

