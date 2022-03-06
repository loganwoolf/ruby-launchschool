
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

  # Class method, can be called on class GoodDog itself
  def self.what_am_i
    "I'm a GoodDog class!"
  end
end
  
# Calling the class method
puts GoodDog.what_am_i