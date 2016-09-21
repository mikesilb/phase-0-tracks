=begin pseudocode
downcase the whole name
split the name of the spy with .split(" ") into full_name array
this gives us an array with the first and last name. 
Then use .reverse to switch the first name and the last name
then use .char on each index of the array
This gives us an array in the array [[l,a,s,t,n,a,m,e],[f,i,r,s,t,n,a,m,e]]
then create arrays, vowels = "aeiou", and consonants = "bcdfghjklmnpqrstvwxyz"
loop through the first nested array and see if each letter is a constant or a vowel
if a vowel
	advance the vowel
	have conditional for u => a
if a constant
	advance the constant
	have conditional for z => a
then go to the next nested array and repeat
use .capitalize to capitalize the first letter of the name

use smaller methods
	one method to split and nest the arrays
	one method to create the fake name
	one method to join the nested array back to a string
=end


# next_letter method finds the next letter given an array of letters

def next_letter(name)
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
	index = 0
	name.map! { |letter|
		if vowels.include? letter
			if letter == "u"
				letter = "a"
			else
			index = vowels.index(letter) + 1
			letter = vowels[index]
			end
		elsif consonants.include? letter
			if letter == "z"
				letter = "b"
			else
				index = consonants.index(letter) +1
				letter = consonants[index]
			end
		end
	}
end
