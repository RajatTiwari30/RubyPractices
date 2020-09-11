# Base class
class Animal
  attr_accessor :kingdom
  def initialize
    puts "Animal class is initialized..."
    @kingdom = "Animal Kingdom"
  end

  def eat 
    puts "I am hungry"
  end

  def walk 
    puts "I am strolling..."
  end
end
 

class Cat < Animal 

end

class Dog < Animal 
  def initialize
    super
    puts "Dog class is getting created..."
  end

  # OVERRIDE THE walk method
  def walk 
    puts "Hmm.. not in a mood to walk..."
    super   # parent 'walk' method
  end
end


# animal = Animal.new 


cat1 = Cat.new 
cat1.walk
puts cat1.kingdom

grumpy_dog = Dog.new 
grumpy_dog.eat 
grumpy_dog.walk 
puts grumpy_dog.kingdom

