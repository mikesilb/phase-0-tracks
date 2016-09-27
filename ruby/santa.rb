class Santa
  def initialize
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end
end

basic_claus = Santa.new

basic_claus.speak

basic_claus.eat_milk_and_cookies("Choc Chip")

