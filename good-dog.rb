
module Speak # this is a mixin
  def speak(sound)
    puts sound
  end
end

class GoodDog
  @@number_of_dogs = 0

  attr_accessor :name, :height, :weight

  # state constructor method, called every time an
  # object is instantiated via #new method
  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w

    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
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
  

puts GoodDog.total_number_of_dogs

dog1 = GoodDog.new("Rex", 24, 35)
dog2 = GoodDog.new("Phteven", 7, 6)

puts GoodDog.total_number_of_dogs