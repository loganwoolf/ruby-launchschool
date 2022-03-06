# Extract common methods to a superclass
# Exceptions can be put in modules and mixed in

# "is-a" relationship, class inheritance (only one super)
# "has-a" relationship, interface inheritance (mixin)

module Swimmable # convention is to use -able on verb modules 
  def swim
    puts "I'm swimming!"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable # mixing in module
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable # mixing in module
end

sparky = Dog.new
neemo  = Fish.new
paws   = Cat.new

sparky.swim
neemo.swim
# paws.swim # gives error