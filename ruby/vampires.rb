puts "What is your name?"
name=gets.chomp
puts "How old are you?"
age=gets.chomp.to_i
puts "What year were you born?"
birth_year=gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? Press y for 'yes' or press n for 'no'."
wants_garlic_bread=gets.chomp
until ((wants_garlic_bread == "y") || (wants_garlic_bread == "n"))
  puts "Come on dude!!!  Please follow the directions and try again."
  puts "Our company cafeteria serves garlic bread. Should we order some for you? Press y for 'yes' or press n for 'no'."
  wants_garlic_bread=gets.chomp
end

puts "Would you like to enroll in the company’s health insurance?  Press y for 'yes' or press n for 'no'."
to_enroll=gets.chomp

until ((to_enroll == "y") || (to_enroll == "n"))
  puts "Come on dude!!!  Please follow the directions and try again."
  puts "Would you like to enroll in the company’s health insurance?  Press y for 'yes' or press n for 'no'."
  to_enroll=gets.chomp
end

if wants_garlic_bread == "y"
  wants_garlic_bread = true
elsif wants_garlic_bread == "n"
  wants_garlic_bread = false
end

if to_enroll == "y"
  to_enroll = true
elsif to_enroll == "n"
  to_enroll = false
end


is_vampire = 0  #initialized value for this assessment
if (2016 - birth_year == age) && (wants_garlic_bread == true || to_enroll == true)
  is_vampire = 1  #Probably not a vampire
end

if (2016 - birth_year != age) && (wants_garlic_bread == false || to_enroll == false)
  is_vampire = 2  #Probably a vampire
end


if (2016 - birth_year != age) && (wants_garlic_bread == false) && (to_enroll == false)
  is_vampire = 3 #Almost certainly a vampire
end


if (name == "Drake Cula") || (name == "Tu Fang")
  is_vampire = 4  #Definitely a vampire
end



if (is_vampire == 0)
  is_vampire = -1 #Results inconclusive
end

case is_vampire
when 1
  puts "Probably not a vampire"
when 2
  puts "Probably a vampire"
when 3
  puts "Almost certainly a vampire"
when 4
  puts "Definitely a vampire"
when -1
  puts "Results inconclusive"
end