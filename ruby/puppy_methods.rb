# Collaborated with Lorelei on this code
class Puppy

  def initialize
    puts "Initializing new puppy instance...."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times {puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    dog_years= human_years * 5
    puts "This dog is #{dog_years} years old in dog years!"
  end

  def wag_tail
    puts "Wagging its tail to the left and right!"
  end
end

#Driver Code
fido= Puppy.new
fido.fetch("ball")
fido.speak(5)
fido.roll_over
fido.dog_years(2)
fido.wag_tail

#----------
#Release 2- New Class


class Bird

  def initialize
    puts "Initializing bird instance...."
  end

  def chirp(number)
    number.times {puts "Chirp chirp!"}
  end

  def flying(altitude)
    puts "This bird is flying at #{altitude} feet."
  end

end

#Driver Code
#tweety= Bird.new
#tweety.chirp(6)
#tweety.flying(100)


our_bird_array= []

50.times do
  our_bird_array << Bird.new
end

our_bird_array.each do |bird_instance|
  bird_instance.chirp(2)
  bird_instance.flying(100)
end



