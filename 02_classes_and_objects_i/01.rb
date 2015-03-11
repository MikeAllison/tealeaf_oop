class MyCar
  attr_accessor :year, :color, :model, :speed

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(mph)
    self.speed += mph
    puts "You are now traveling #{self.speed} MPH."
  end

  def brake(mph)
    self.speed -= mph
    puts "You have braked and are traveling #{self.speed} MPH."
  end

  def shut_off
    self.speed = 0
    puts "The car is off"
  end
end

accord = MyCar.new(2005, "grey", "Accord")

puts accord.year
puts accord.color
puts accord.model

accord.speed_up(20)
accord.speed_up(10)

accord.brake(5)

accord.shut_off
