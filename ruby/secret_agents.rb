# MPP 4.6
# Create an encrypt and decrypt function
# encrypt should take a string and advance each character 1 letter forward
# a => b ... z => a
# decrypt should reverse this
# a => z ... b => a
=begin
* encrypt should take in a string
* loop through each index of the string and advance the letter with .next
	*Will need an if statement to check if the letter is "z", if it's z result shoudl add "a"
* store the result in a result variable with += to add it to the string
* return the result.

*decrypt will take in a string
*There will be a string "abcdefghijklmnopqrstuvwxyz"
*decrypt takes the string index and finds it in alphabet index
*result += alphabet[i-1] unless i = 0.
	*if i = 0 then result += "z"
*return the result
=end

def encrypt(string)
	result = ""
	i = 0
	while i < string.length
		if (string[i] == "z")
			result += "a"
		else
			result += string[i].next
		end
		i += 1
	end
	return result
end

def decrypt(string)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	i = 0
	result_index = 0
	result = ""
	while i < string.length
		if string[i] == "a"
			result += "z"
		else
			result_index = alphabet.index(string[i])-1
			result += alphabet[result_index]
		end
	i += 1
	end
	return result
end

#Testing for Release 3
#puts encrypt("abc")
#puts encrypt("zed")
#puts decrypt("bcd")
#puts decrypt("afe")

#Nothing went wrong the edge cases were accounted for in pseudo code

#testing for release 4
#puts decrypt(encrypt("swordfish"))

=begin 
This nested method call works because the decrypt method is looking for it's
input and calls the encrypt method, which takes in swordfish and then returns
the encrypted codeword to the decrypt method.
=end


