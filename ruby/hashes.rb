# Will need to generate a hash, one per client
# Keys: name (string), age (integer), num_children (integer), decor theme (string), price (in dollars) (float), motivation (string)
# Prompt user for each of these
# Print hash out on screen when all questions answered
# Opportunity to update a key:
#  a) Print message for viewer asking whether to update
#  b) If else
#     1) If mentions specific key (and it exists)
#       a) Ask what value to change to
#       b) Change key value combo
#     2) Else
#       a) keep blank inside
#       b) Print that nothing will change
# Repeat printout process
# end program


client = {}
puts "What is the client's name?"
client[:name] = gets.chomp.to_s
puts "How old is the client?"
client[:age] = gets.chomp.to_i
puts "How many children does the client have?"
client[:num_children] = gets.chomp.to_i
puts "What style/theme do you want the decor to be?"
client[:decor_theme] = gets.chomp.to_s
puts "How much will the design cost?"
client[:price] = gets.chomp.to_f
puts "Why does the client need this design?"
client[:motivation] = gets.chomp.to_s

puts client

puts "Is there any key that you'd like to update?"
user_mod = gets.chomp
if user_mod != "none"
  puts "What value would you replace with?"
  client[user_mod.to_sym] = gets.chomp
else
  puts "No info about the client will change right now."
end

puts client
