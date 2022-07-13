class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"

# the above throws an error. 

# because attr_reader only creates a getter method, not a setter method


