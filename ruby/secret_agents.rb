#names: Yaritza Perez and Michael Silberstein
#Encrypt
#1.) start a certain index (that is 0)
#2.)everytime your method advances, the index of the current letter will change by adding one to its value
#3.) pass to the next letter
#4.)end the method when you hit a certain condition(when the word ends)

def encrypt(string_input)
  index = 0
  alphabet ="abcdefghijklmnopqrstuvwxyz"
  mod_string = ""
  while index < string_input.length
    #puts index
    #puts string_input.length
    #puts string_input[index]
    #puts string_input[index].next
    if string_input[index] == alphabet[-1]
      mod_string[index] = alphabet[0]
      index += 1
    else
      string_input[index] = string_input[index].next
      mod_string[index] = string_input[index]
      #puts mod_string[index]
      index += 1
    end
  end
  p mod_string
end

#decrypt
#1.)start a certain index (that is 0)
#2.)everytime your method advances the index of the current letter will change by subtracting one to its value
#3.) pass to the next letter
#4.)end the method when you hit a certain condition(when the word ends)


def decrypt(string_input)
  index = 0
  alphabet ="abcdefghijklmnopqrstuvwxyz"
  mod_string = ""
  while index < string_input.length
    #puts index
    #puts string_input.length
    #puts string_input[index]
    #puts string_input[index].next
    if string_input[index] == alphabet[0]
      mod_string[index] = alphabet[-1]
      index += 1
    else
      string_input[index] = (string_input[index].chr.ord - 1).chr
   #   puts string_input[index]
      mod_string[index] = string_input[index]
      #puts mod_string[index]
      index += 1
    end
  end
  p mod_string
end

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")

test_nested_output = decrypt(encrypt("swordfish"))  #Here it will first print out the encrypted "swordfish" and then it will use that encrypted result as input for the decrypt method.  If all goes well, the result should revert back to "swordfish."