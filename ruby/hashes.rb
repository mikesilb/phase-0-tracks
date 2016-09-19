=begin
	Create hash and name all data types
	prompt user for all the information (the client's name, age, number of children,
	decor theme, paying with cash)
	use gets.chomp to save the data into a hash and convert it to the appropriate data type. 
	Once all questions are answered print out the hash
	promt the user if they want to make any changes
		if they enter the data type as a string it should prompt the user to re-enter the data
		since we're not looping the user can only fix one data value
	reprint the new hash and exit

=end
#initialize hash
client_info = {
	:name => "",
	:age =>0,
	:number_of_children => 0,
	:decor_theme => "",
	:paying_with_cash => false
}

def to_bool(str)
	str =="true"
end

puts "What is the client's name"
client_info[:name] = gets.chomp

puts "What is the client's age?"
client_info[:age] = gets.chomp.to_i

puts "How many children does the client have?"
client_info[:number_of_children] = gets.chomp.to_i

puts "What is their preferred decor theme?"
client_info[:decor_theme] = gets.chomp.to_i

puts "Will they be paying in cash? (true/false)"
client_info[:paying_with_cash] = to_bool(gets.chomp)

puts client_info
