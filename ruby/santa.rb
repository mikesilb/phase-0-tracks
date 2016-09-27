class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance of a #{@ethnicity} #{@gender}!"
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
    puts "Congratulations!  This Santa is now #{@age} years old."
  end

  def get_mad_at(name)
   index_num = @reindeer_ranking.index(name)
   @reindeer_ranking.delete_at(index_num)
   @reindeer_ranking.push(name)
   puts "I am pissed off at you, #{name} and you are going to the back of the line!"
  end

  #setter methods below

  def gender=(new_gender)
    @gender = new_gender
    puts "OK, now the new gender is #{new_gender}"
  end

  #getter methods below

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

end


=begin

#basic_claus = Santa.new

#basic_claus.speak

#basic_claus.eat_milk_and_cookies("Choc Chip")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
reversed_ethnicities = ["N/A", "Mystical Creature (unicorn)", "prefer not to say", "Japanese-African", "white", "Latino", "black"]
random_ethnicities = ["Japanese-African", "Latino", "Mystical Creature (unicorn)", "N/A", "white", "prefer not to say", "black"]

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end


example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], reversed_ethnicities[i])
end
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], random_ethnicities[i])
end
=end

newest_Santa = Santa.new("male", "Caucasian")

newest_Santa.celebrate_birthday
newest_Santa.get_mad_at("Vixen")
newest_Santa.gender = "female"

puts newest_Santa.age
puts newest_Santa.ethnicity