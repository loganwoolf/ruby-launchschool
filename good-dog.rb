class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal
  def initialize(color)
    # forwards arguments to super constructor if none specified
    super
    @color = color
  end
end

class BadDog < Animal
  def initialize(name, color)
    super(name)
    @color = color
  end
end

bruno = GoodDog.new("brown")        # => #<GoodDog:0x007fb40b1e6718 @color="brown", @name="brown">
turner = BadDog.new("Turner", "Grey")

p bruno
p turner