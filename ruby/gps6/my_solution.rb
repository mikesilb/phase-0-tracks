# Virus Predictor

# I worked on this challenge [by myself, with: Hyejin].
# We spent 1.25 hours on this challenge.

# EXPLANATION OF require_relative
# Using require relative means that any file in the same location as the file 
# calling require_relative can access that file. In this case my_solution 
# calls state_data which is in the same folder as my_solution.
# require differs from require_relative because a load path needs to be specified
# 
require_relative 'state_data'

class VirusPredictor
  # Initializes and sets attributes inside the class from the state_data.rb
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Calls predicted_deaths and speed_of_spreads, uses attributes that were assigned
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # predicted_deaths uses @population_density to estimate number_of_deaths and 
  # rounds down. Then prints the state and the number_of_deaths 
  def predicted_deaths
    # predicted deaths is solely based on population density
    multiplier = 0 
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end
    number_of_deaths = (@population * multiplier).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # calculates the speed of virus spread given population density)
  # prints how fast the virus will spread in months
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end
STATE_DATA.each do |state, population_info| 
  state_instance = VirusPredictor.new(state, population_info[:population_density], population_info[:population])
  state_instance.virus_effects
end

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
* The first hash has a key that is a string that points to a hash with symbols as keys.
What does require_relative do? How is it different from require?
* It requires another file relative to the file path of the this file. It is different
  from require because it does not need to have a file path specified.
What are some ways to iterate through a hash?
* You can use a loop to go through all of the indexes of a hash, but .each is an easier
  way to iterate through a hash.
When refactoring virus_effects, what stood out to you about the variables, if anything?
* Calling attributes inside a class is unnecessary.
What concept did you most solidify in this challenge?
* refactoring and DRY methods.
=end