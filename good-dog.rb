class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age
  def initialize(n, a)
    self.name = n
    self.age = a
  end
  
  def public_disclosure
    # human_years is implicitly called by 'self'
    "#{self.name} in human years is #{human_years}"
  end
  
  private # only accessible from other methods in the class
  # protected # as above, but also accessible by any instance that inherits it ???
  
  def human_years
    age * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
# p sparky.human_years # does not work, it's private
p sparky.public_disclosure