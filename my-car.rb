class MyCar
  attr_accessor :color
  attr_reader :model, :year

  def initialize(m, c, y)
    @model = m
    self.color = c
    @year = y
    @speed = 0
  end

  def check_speed
    puts "We're going #{@speed} km/h"
  end

  def accel amount
    @speed += amount 
    @speed = 170 if @speed > 171
    check_speed
  end

  def brake amount
    @speed -= amount
    if @speed < 1
      park
    else
      check_speed
    end
  end

  def park
    @speed = 0
    puts "We've parked!"
  end

  def self.spray_paint new_color
    self.color = new_color
  end

  def to_s
    "This is a #{self.color} #{self.year} #{self.model}"
  end

  def self.fuel_economy(fuel, range)
    puts "Fuel Economy Calculation in l/100km"
    puts "Fuel used: #{fuel}, Range driven: #{range}"
    puts "#{100.0 * fuel / range} litres per 100km"
  end
end


vue = MyCar.new("Vue", "Blue", 2008)

# puts MyCar.fuel_economy(10, 90)
puts vue