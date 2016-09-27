# 6.4 
module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
  	words + "!!!" + " :)"
  end
end
=begin
# DRIVER CODE
p Shout.yell_happily("I'm Happy")
# should return "I'm Happy!!! :)"
p Shout.yell_angrily("I'm ANGRY")
# should return "I'm ANGRY!!! :("
=end
class Dragonborn
	include Shout
end

class Children
	include Shout
end

dragonborn = Dragonborn.new
child = Children.new

# DRIVER CODE
p dragonborn.yell_angrily("Fus Ro Dah")
p child.yell_happily("It's so fluffy i'm going to die")