class MyCar
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
end

MyCar.gas_mileage(13, 260)
