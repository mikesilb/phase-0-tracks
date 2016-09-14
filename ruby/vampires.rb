# write a program that asks the new employee the following questions.
#What is your name? Some known vampires are in the area, and we can check against the Werewolf Intelligence Bureau database for their aliases.

#How old are you? What year were you born? This is to try to trick the vampire, who is likely several hundreds of years old. If an employee gives an age and a year of birth that don’t line up mathematically, that employee might be a vampire.

#Our company cafeteria serves garlic bread. Should we order some for you? Vampires hate garlic. Do not even get a vampire started on garlic. Invite a vampire to an Italian restaurant even one time, and you’ll never hear the end of it.

#Would you like to enroll in the company’s health insurance? Vampires are immortal, so they certainly don’t need health insurance.
puts ("How many employees will be processed?")
employees = gets.chomp.to_i
i = 0
status = false

while i < employees
	result = ""
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

	puts ("Do you have any allergies? When you're finished type 'done'")
	until status == true
		allergy = gets.chomp
		if allergy == "done"
			status = true
		elsif allergy == "sunshine"
			result = "Probably a vampire"
			status = true
		end
	end
	if (status == true && result == "")
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
		status = false
	elsif (status == true && result != "")
		status = false
	else
		result = "Something went wrong try again"

puts result
i += 1
end
puts ("Actually, never mind! What do these questions have to do with anything? Let's all be friends.")