
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
    "#{name} says arf!" #now no longer need the @name, this is the getter method
  end

  # New method that can change several states at once,
  # not yet a proper setter. It won't work to remove the
  # @ from each variable, we must use self.xyz
  def change_info(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
end
  
sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info      # => Sparky weighs 10 lbs and is 12 inches tall.

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info      # => Spartacus weighs 45 lbs and is 24 inches tall.