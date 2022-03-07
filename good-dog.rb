module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable # below, consulted fourth

  def speak
    "I'm an animal, and I speak!"
  end
end

# puts Animal.ancestors # check lookup order for methods

class GoodDog < Animal # parent consulted third, then modules in reverse order
  include Swimmable # module consulted second
  include Climbable # module consulted first
end

puts GoodDog.ancestors