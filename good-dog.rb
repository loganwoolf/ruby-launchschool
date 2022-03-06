
module Speak # this is a mixin
  def speak(sound)
    puts sound
  end
end

class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
  
  # instance var can't be accessed directly, needs a
  # method to return it. This is a getter.
  def name   # Renamed from get_name. Convention.
    @name
  end

  # This is a setter. Notice the equals sign
  def name=(n)  # Renamed from set_name. Convention
    @name = n  # Setters always return the argument
    # any value here will be ignored
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
