
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
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
fido = GoodDog.new("Fido")
puts fido.speak

bob = HumanBeing.new

# puts "---GoodDog ancestors---"
# puts GoodDog.ancestors
# puts ''
# puts "---HumanBeing ancestors---"
# puts HumanBeing.ancestors