=begin
I. Name swap
  A. Take in input from user
  B. split by " "
  C. Run .rotate method on array and save as new (swapped) array

II. Vowel/consonant shifts (making methods for each)
  A. Declare vowel and consonant arrays
  B. While loop for uppercase and lowercase consonants, for uppercase and lowercase vowels
  C. If letter matches any of these 4 conditions (but is not u,U,z,Z) use the (n+1) array position
    1) If letter is u,U,z,Z, convert respectively to a, A, b, B
  D. Print new array to screen
=end

def next_letter(letter)
  counter_lower_vowel = 0
  counter_upper_vowel = 0
  counter_lower_consonant = 0
  counter_upper_consonant = 0
  vowel_lower = "aeiou".split('')
  vowel_upper = "AEIOU".split('')
  consonant_lower = "bcdfghjklmnpqrstvwxyz".split('')
  consonant_upper = "BCDFGHJKLMNPQRSTVWXYZ".split('')
  while counter_lower_vowel < vowel_lower.length
    if letter == vowel_lower[counter_lower_vowel]
      return  vowel_lower[counter_lower_vowel+1]
    elsif letter == vowel_lower[-1]
      return vowel_lower[0]
    end
    counter_lower_vowel += 1
  end
  while counter_upper_vowel < vowel_upper.length - 1
    if letter == vowel_upper[counter_upper_vowel]
      return  vowel_upper[counter_upper_vowel+1]
    elsif letter == vowel_upper[-1]
      return vowel_upper[0]
    end
    counter_upper_vowel += 1
  end
  while counter_lower_consonant < consonant_lower.length
    if letter == consonant_lower[counter_lower_consonant]
      return  consonant_lower[counter_lower_consonant+1]
    elsif letter == consonant_lower[-1]
      return consonant_lower[0]
    end
    counter_lower_consonant += 1
  end
  while counter_upper_consonant < consonant_upper.length - 1
    if letter == consonant_upper[counter_upper_consonant]
      return  consonant_upper[counter_upper_consonant+1]
    elsif letter == consonant_upper[-1]
      return consonant_upper[0]
    end
    counter_upper_consonant += 1
  end
end




puts "What name will you want to turn into an alias?"
name1 = gets.chomp.split(' ')


  name = []

  name = name1.rotate


  swapped_first_name_spelled = name[0].split('')
  swapped_last_name_spelled = name[1].split('')



  alias_first_name_spelled = swapped_first_name_spelled.map do |letter|
    next_letter(letter)
  end
  alias_last_name_spelled = swapped_last_name_spelled.map  do |letter|
    next_letter(letter)
  end

  alias_first_name = alias_first_name_spelled.join
  alias_last_name = alias_last_name_spelled.join

  puts "Your new alias is #{alias_first_name} #{alias_last_name}"


