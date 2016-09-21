=begin Mandatory Pair Programming 5.3
Iterations
Sean Kung and Louie Chen
=end
#names for array
names = ["John", "Jane", "Tom", "Meg"]

#hash for their favorite seasons
seasons = {
	john: "fall",
	jane: "winter"
	tom: "spring"
	meg: "summer"

}

names.each {|name| puts "#{name} is cool" }

seasons.each do |name, value|
	puts "#{name}'s favorite season is #{value}"
end

names.map! {|name| puts "#{name} is cool"}

seasons.map { |name, value| puts "#{name}'s favorite season is #{value}"}
# release 2

# Reinitialize arr and seasons hash after each method call so that the next method can
# be called effectively.
# Question 1
arr = [ 10, 2, 6, 15, 23, 4, 1]
arr.delete_if { |number| number < 5}

seasons = {
	john: "fall",
	jane: "winter",
	tom: "spring",
	meg: "summer"
}
seasons.delete_if {|name, value| value == "fall"}

# Question 2
arr = [ 10, 2, 6, 15, 23, 4, 1]
arr.keep_if { |number| number < 5}

seasons = {
	john: "fall",
	jane: "winter",
	tom: "spring",
	meg: "summer"
}
seasons.keep_if {|name, value| value == "fall" || value == "winter"}

# Question 3
arr = [ 10, 2, 6, 15, 23, 4, 1]
arr.sort! { |number1, number2| number2 <=> number1 }

seasons = {
	john: "fall",
	jane: "winter",
	tom: "spring",
	meg: "summer"
}
seasons.sort {|name1, name2| name1 <=> name2 }

# Question 4
arr = [ 10, 2, 6, 15, 23, 4, 1]
arr.drop_while { |number| number > 5}

seasons = {
	john: "fall",
	jane: "winter",
	tom: "spring",
	meg: "summer"
}
seasons.drop_while{ |name, value| value.length < 5}