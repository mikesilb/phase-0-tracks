puts "What is hamster's name"
name = gets.chomp
puts "How loud are they (from 1-10)"
loudness = gets.chomp.to_i
puts "What is the fur color?"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption? (y or n)"
adoption_candidate = gets.chomp
if adoption_candidate == "y" || adoption_candidate == "n"
  adoption =  true
  puts "How old approximately is this hamster?"
  age = gets.chomp.to_i
else
  until adoption_candidate == "y" || adoption_candidate == "n"
     puts "Invalid response. Is the hamster a good candidate for adoption (y or n)"
     adoption_candidate = gets.chomp
  end
  adoption = false
  puts "How old approximately is this hamster?"
  adoption_candidate = gets.chomp
end

puts "Hamster's Name: #{name}"
puts "Hamster's Loudness: #{loudness}"
puts "Hamster's Fur Color: #{fur_color}"
puts "Hamster's Age: #{age}"