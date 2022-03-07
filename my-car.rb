module Roofrack
  @roofrack_open = false

  def toggle_roofrack
    @roofrack_open = !@roofrack_open
    if @roofrack_open
      p "closes the roofrack"
    else
      p "opens the roofrack" 
    end
  end
end

class Vehicle
  @@collection_size = 0

  attr_accessor :color
  attr_reader :model, :year

  def initialize(m, c, y)
    @model = m
    self.color = c
    @year = y
    @speed = 0
    @@collection_size += 1
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
    "This is a #{self.color} #{self.year} #{self.model}.
    It is #{age} years old."
  end

  def self.fuel_economy(fuel, range)
    puts "Fuel Economy Calculation in l/100km"
    puts "Fuel used: #{fuel}, Range driven: #{range}"
    puts "#{100.0 * fuel / range} litres per 100km"
  end

  def self.collection_size
    p @@collection_size
  end

  private

  def age
    Time.now.year - self.year
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def initialize(m, y, c)
    super
  end

  include Roofrack
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
  def initialize(m, y, c)
    super
  end
end

# p vue = MyCar.new("Vue", "blue", 2008)
# p ford = MyTruck.new("F-100", "black", 1961)

# vue.toggle_roofrack
# vue.toggle_roofrack

# puts "==MyCar ancestors=="
# puts MyCar.ancestors
# puts "==MyTruck ancestors=="
# puts MyTruck.ancestors
# puts "==Vehicle ancestors=="
# puts Vehicle.ancestors

# puts ford.to_s

class Student
  attr_reader :name
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(student)
    student.grade < grade
  end

  protected # protected allows other instance's methods to access, private would not
  attr_reader :grade
end

first = Student.new("bill", 78)
second = Student.new('greg', 82)
p second.better_grade_than?(first)
p first.better_grade_than?(second)