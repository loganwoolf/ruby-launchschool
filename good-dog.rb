class Animal
  def speak
    "#{self.name} speaks: Hello!" # Self refers to the instance
  end
end

class GoodDog < Animal # Inherits methods from superclass Animal using '<'
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  # Overrides the speak method in the super class
  def speak
    "#{self.name} says 'Arf!'"
  end
end

class Cat < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  # Speak method is inherited from superclass Animal
end

sparky = GoodDog.new("Rex")
paws = Cat.new("Goop")
puts sparky.speak           # => Hello!
puts paws.speak             # => Hello!