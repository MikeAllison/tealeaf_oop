class Vehicle

  attr_accessor :color, :speed
  attr_reader :year, :model, :tank_size, :miles_per_tank

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} per gallon."
  end

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

  def spray_paint(color)
    self.color = color
    puts "The car is now #{self.color}."
  end

  def to_s
    "Your car is a #{color} #{year} #{model}."
  end

  def storage_type
    "Your vehicle stores items in the: #{self.class::STORAGE_TYPE}"
  end

end

class MyCar < Vehicle
  STORAGE_TYPE = "trunk"
end

class Truck < Vehicle
  STORAGE_TYPE = "bed"
end

accord = MyCar.new(2005, "grey", "Accord")
puts accord.storage_type

tundra = Truck.new(2015, "red", "Tundra")
puts tundra.storage_type
