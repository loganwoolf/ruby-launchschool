# Namespacing, grouping related classes under a module

module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end

  def self.describe
    "Mammals are pretty much normal animals"
  end
end

# Call classes using '::'
# rex = Dog.new # Err: uninitialized constant
buster = Mammal::Dog.new
buster.speak("Arf!")
mittens = Mammal::Cat.new
mittens.say_name("Mittens")

# Call module methods
puts Mammal.describe
puts Mammal::describe # less preferred way