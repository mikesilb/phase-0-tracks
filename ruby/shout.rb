# 6.4 
module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	words + "!!!" + " :)"
  end
end

# DRIVER CODE
p Shout.yell_happily("I'm Happy")
# should return "I'm Happy!!! :)"
p Shout.yell_angrily("I'm ANGRY")
# should return "I'm ANGRY!!! :("