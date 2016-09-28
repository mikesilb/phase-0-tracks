module Shout
  def self.yell_angrily(words)
  puts  words + "!!!" + " :("
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
  puts  words + "!!!" + " That is incredibly awesome!" + " :-D"
  words + "!!!" + " That is incredibly awesome!" + " :-D"
  end
end

Shout.yell_happily("Yo Adrian!  I did it")
Shout.yell_angrily("I am not a happy camper right now")
Shout.yell_happily("I really AM the dude")
Shout.yell_angrily("We're not gonna take it anymore")