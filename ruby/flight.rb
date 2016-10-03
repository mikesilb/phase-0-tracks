module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end


class Bird
  include Flight
end

class Plane
  include Flight
end

big_bird = Bird.new
big_bird.take_off(500)

boeing_747 = Plane.new
boeing_747.take_off(37500)