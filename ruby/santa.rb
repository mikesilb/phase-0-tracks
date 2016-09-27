class Santa
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

	def change_gender(gender)
		@gender = gender
	end

	def gender
		@gender
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

	def reindeer_ranking
		@reindeer_ranking
	end

end

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
claus.change_gender("female")
p claus.gender
# should return female
p claus.ethnicity
# should return German
claus.get_mad_at("Dancer")
p claus.reindeer_ranking
# should put rudolph at the end of the list, bad rudolph