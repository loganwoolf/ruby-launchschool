class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age  = a * DOG_YEARS
  end

  def to_s
    # to_s is also called on every string interpolation #{}
    "this dog's name is #{name} and its age is #{age} dog-years."
  end
end

sparky = GoodDog.new("Sparky", 4)
# #to_s belongs to every class
# puts automatically calls to_s on its argument
puts sparky             # => 28

# p automatically calls inspect on its argument
p sparky