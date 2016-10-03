class Santa
  attr_reader :ethnicity
  attr_accessor :age, :gender

  def initialize(gender, ethnicity, age)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age
    puts "Initializing Santa instance of a #{@ethnicity} #{@gender} that is #{age} years old."
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

end


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
age = Random.new
200.times do |i|
  santas << Santa.new(example_genders.sample,example_ethnicities.sample, age.rand(140))
end



#newest_Santa.celebrate_birthday
#newest_Santa.get_mad_at("Vixen")
#newest_Santa.gender = "female"

#puts newest_Santa.age
#puts newest_Santa.ethnicity

