# Generally, don't override methods. to_s might be ok to
# override if you just want a different string to return

class Parent
  def say_hi
    p "Hi from Parent."
  end
end

# puts Parent.superclass       # => Object

class Child < Parent
  def say_hi
    p "Hi from Child."
  end

  # def send
  #   p "send from Child..."
  # end

  # def instance_of?
  #   p "I am a fake instance"
  # end
end

child = Child.new
child.say_hi         # => "Hi from Child."

son = Child.new
son.send 'say_hi'

p son.instance_of? Child
p son.instance_of? Parent

