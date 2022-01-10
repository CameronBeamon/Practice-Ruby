class Car
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def speed
    @speed
  end

  def direction
    @direction
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Car
  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
bike = Bike.new
car.accelerate
bike.accelerate
puts car.speed
puts bike.speed
bike.ring_bell
car.honk_horn
