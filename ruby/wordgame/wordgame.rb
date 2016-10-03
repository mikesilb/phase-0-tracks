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
  3) @inputted_word, user specified = nil
  4) @num_guesses = Total number of guesses. Equal to the 'length' of the word. = nil
  5) @guess_array = [], an array formed by the specific guessed letters
  6) @letter_correct_status = nil .  Determines the state of whether the particular guessed letter is correct
  7) @win = false . Changes if player 2 wins
  8) @display_array = [], A display that indicates the revealed and hidden letters

def word_input_player_one: Will input a word to be guessed on.  Splits the word into an array of letters


def player2_letter_guesses:  Will be implemented throughout the course of any and all guesses made by player 2.  Displays the word/guess status as the game progresses.  Also takes a countdown of the number of guesses (until hitting 0, implying a loss).  Stops when all letters are found/identified.




B. Driver code
1)Ask user 1 to enter word (stored as part of WordGame Class)
2)Ask user 2 to guess a letter
3)Print specific wordstate
4)Print number of guesses remaining
USE Class method to repeat 2-4 until outcome of game is decided
5) When decided, print message (winning/losing)

=end

class WordGame
  attr_reader :inputted_word, :num_guesses, :win, :guessed_count, :guess_array, :letter_correct_status, :display_array
  attr_accessor :guessed_letter

  def initialize
    @num_guesses = nil
    @inputted_word = nil
    @guessed_letter = nil
    @guess_array = []
    @letter_correct_status = nil
    @win = false
    @display_array = []
  end

  def word_input_player_one
    puts "Player 1, enter a word for the other player to guess"
    @inputted_word = gets.chomp
    @inputted_word_array = @inputted_word.split('')
  end

  def player2_letter_guesses
   @num_guesses = @inputted_word_array.length
   p @display_array << @inputted_word_array.map { |letter| "_"}

      while !win && @num_guesses > 0
        puts "You have #{@num_guesses} guesses left."
        puts "Player 2, What letter are you planning to guess?"
        @guessed_letter = gets.chomp

         @used_position1 = @inputted_word_array.index(@guessed_letter)
          @guess_array.index(@guessed_letter)

        if (@inputted_word_array.index(@guessed_letter)) == nil && (@guess_array.index(@guessed_letter)) == nil
          @num_guesses -= 1
          p @display_array
        elsif (@inputted_word_array.index(@guessed_letter)) == nil
          p @display_array
        else
          @display_array[0][@inputted_word_array.index(@guessed_letter)] = @guessed_letter
          p @display_array
          @inputted_word_array[@used_position1] = "*"
          if (@inputted_word_array.index(@guessed_letter)) == nil
             @used_position2 =@inputted_word_array.index(@guessed_letter)
          end

        end
         @guess_array.push(@guessed_letter)

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

