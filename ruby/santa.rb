class Santa

	attr_reader :ethnicity, :reindeer_ranking
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		p "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		p "Ho, ho ho! Happy Holidays!"
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		reindeer_ranking.delete_if {|reindeer| reindeer == reindeer_name}
		reindeer_ranking << reindeer_name
	end

end
=begin
# DRIVER CODE
claus = Santa.new("male", "German")
claus.speak
claus.eat_milk_and_cookies("Chocolate Chip")

benjamin = Santa.new("agender", "black")
chris = Santa.new("female", "Latino")
mickey =  Santa.new("bigender", "white")
jan =  Santa.new("male", "Japanese")

claus.celebrate_birthday
p claus.age
# should return 1
claus.gender = "female"
p claus.gender
# should return female
p claus.ethnicity
# should return German
claus.get_mad_at("Dancer")
p claus.reindeer_ranking
# should put rudolph at the end of the list, bad rudolph
=end
santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese", "African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

i = 0

while i < 200 
	santas[i] = Santa.new(genders.sample, ethnicities.sample)
	santas[i].age = rand(140)
	p "This santa's age is #{santas[i].age}."
	p "This santa's age is #{santas[i].gender}."
	p "This santa's ethnicity is #{santas[i].ethnicity}."
	i += 1
end

