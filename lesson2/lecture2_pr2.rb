class Pet 
  def run
    'running!'
  end 
  
  def jump
    "jumping!"
  end 
end 

class Cat < Pets
  def speak
    "Meow!"
  end 
  
  def climb
    "climbing!"
  end 
end 

class Dog < Pets
  def speak
    'bark!'
  end 
  
  def swim
    'swimming!'
  end 
  
  def fetch
    'fetching!'
  end
end 

class Bulldog < Dog
  def swim
    "Can't swim!"
  end 
end 
