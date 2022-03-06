
module Speak # this is a mixin
  def speak(sound)
    puts sound
  end
end

class GoodDog
  def initialize(name) # called every time like constructor
    # puts "This object was initialized!"
    @name = name # instance variable with @, other one is local and is destroyed
  end
  include Speak
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new("Sparky") # "Sparky" becomes name, which then becomes @name
sparky.speak("Arf!")
fido = GoodDog.new("Fido")

bob = HumanBeing.new
bob.speak("Ugg!")

# puts "---GoodDog ancestors---"
# puts GoodDog.ancestors
# puts ''
# puts "---HumanBeing ancestors---"
# puts HumanBeing.ancestors