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

arr.each {|name| puts "#{name} is cool" }

seasons.each do |name value|
	puts "#{name}'s favorite season is #{value}"
end

arr.map! {|name| puts "#{name} is cool"}
# release 2

seasons.map { |name, value| puts "#{name}'s favorite season is #{value}"}

arr = [ 10, 2, 6, 15, 23, 4, 1]
arr.delete_if { |number| number < 5}

seasons = {
	john: "fall",
	jane: "winter",
	tom: "spring",
	meg: "summer"
}
seasons.delete_if {|name, value| value == "fall"}

arr = [ 10, 2, 6, 15, 23, 4, 1]
arr.keep_if { |number| number < 5}

seasons = {
	john: "fall",
	jane: "winter",
	tom: "spring",
	meg: "summer"
}
seasons.keep_if {|name, value| value == "fall" || value == "winter"}

arr = [ 10, 2, 6, 15, 23, 4, 1]
arr.sort! { |number1, number2| number2 <=> number1 }

seasons = {
	john: "fall",
	jane: "winter",
	tom: "spring",
	meg: "summer"
}
seasons.sort {|name1, name2| name1 <=> name2 }

arr = [ 10, 2, 6, 15, 23, 4, 1]
arr.drop_while { |number| number > 5}

seasons = {
	john: "fall",
	jane: "winter",
	tom: "spring",
	meg: "summer"
}
seasons.drop_while{ |name, value| value.length < 5}