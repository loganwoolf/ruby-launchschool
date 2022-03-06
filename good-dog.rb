
module Speak # this is a mixin
  def speak(sound)
    puts sound
  end
end

class GoodDog
  # This one line of code gives us six getter/setter instance methods: name, name=, height, height=, weight, weight=. It also gives us three instance variables: @name, @height, @weight.
  attr_accessor :name, :height, :weight

  # state constructor method
  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!"
  end

  # Proper setter method
  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  # optional to use self on getter variables
  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  # May also call any instance method with self.
  def some_method
    self.info
  end
  
end
  
sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info      # => Sparky weighs 10 lbs and is 12 inches tall.

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info      # => Spartacus weighs 45 lbs and is 24 inches tall.