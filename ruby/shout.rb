=begin
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
=end

module Shout
  def yell_angrily(words)
    puts  words + "!!!" + " :("
    words + "!!!" + " :("
  end

  def yell_happily(words)
    puts  words + "!!!" + " That is incredibly awesome!" + " :-D"
    words + "!!!" + " That is incredibly awesome!" + " :-D"
  end
end

class Lead_singer
  include Shout
end

class Politician
  include Shout
end

axl_rose = Lead_singer.new
axl_rose.yell_angrily("Get off the damn stage")
axl_rose.yell_happily("You know where you are?  You're in the jungle baby")
donald_trump = Politician.new
donald_trump.yell_happily("I totally dominated that debate!  I won hands down")
donald_trump.yell_angrily("That silly moderator and the liberal media are screwing me over this election.  This is totally ludicrous")