
module Speak # this is a mixin
  def speak(sound)
    puts sound
  end
end

class GoodDog
  attr_accessor :name #, :height, :weight # replaced the getter and setter methods
  # attr_reader for just setting a getter
  # attr_writer for just setting a setter
  def initialize(name)
    @name = name
  end

  def speak
    "#{name} says arf!" #now no longer need the @name, this is the getter method
  end
end
  
class HumanBeing
  include Speak
end

sparky = GoodDog.new("Sparky")
puts sparky.name
puts sparky.speak

# This doesn't work because of the = on the setter method
# sparky.set_name("Rex") 
# notice that this is invoked with an equals
sparky.name = "Rex" 

puts sparky.name
puts sparky.speak
