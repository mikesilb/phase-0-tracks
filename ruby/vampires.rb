# write a program that asks the new employee the following questions.
#What is your name? Some known vampires are in the area, and we can check against the Werewolf Intelligence Bureau database for their aliases.

#How old are you? What year were you born? This is to try to trick the vampire, who is likely several hundreds of years old. If an employee gives an age and a year of birth that don’t line up mathematically, that employee might be a vampire.

#Our company cafeteria serves garlic bread. Should we order some for you? Vampires hate garlic. Do not even get a vampire started on garlic. Invite a vampire to an Italian restaurant even one time, and you’ll never hear the end of it.

#Would you like to enroll in the company’s health insurance? Vampires are immortal, so they certainly don’t need health insurance.
puts ("How many employees will be processed?")
employees = gets.chomp.to_i
i = 0
while i < employees

	puts ("What is your name?")
	name = gets.chomp

	puts ("How old will you be by the end of the year?")
	age = gets.chomp.to_i

	puts ("What year were you born? (YYYY)")
	year = gets.chomp.to_i

	puts ("Our company cafeteria serves garlic bread. Should we order some for you? (y/n)")
	garlic = gets.chomp

	puts ("Would you like to enroll in the company’s health insurance? (y/n)")
	insurance = gets.chomp

	result = ""
	test = 0
	if (age == 2016-year && (garlic == "y" || insurance == "y"))
		result = "Probably not a vampire"
	end

	if (age != 2016-year && (garlic == "n" || insurance == "n"))
			result = "Probably a vampire"
	end

	if (age != 2016-year && garlic == "n" && insurance == "n")
		result = "Almost certainly a vampire"
	end

	if (name == "Drake Cula" || name == "Tu Fang")
		result = "Definitely a vampire"
	end

	if (result == "")
		result = "Result Inconclusive"
	end

puts result
i += 1
end