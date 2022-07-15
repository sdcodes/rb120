class Person
  attr_accessor :first_name, :last_name
  
  def initialize(full_name)
    parse_full_name(full_name)
  end 
  
  def name= (full_name)
    parse_full_name(full_name)
  end 
  
  def name 
    first_name + " " + last_name
  end 
  
  private
  
  def parse_full_name(full_name)
    parts = full_name.split
    @first_name = parts[0]
    @last_name = parts.size > 1 ? parts[1] : "no name"    

  end
end 

bob = Person.new('Robert')
p bob.name                  # => 'Robert'
p bob.first_name            # => 'Robert'
p bob.last_name             # => ''
bob.last_name = 'Smith'
p bob.name 


bob.name = "John Adams"
p bob.name 
p bob.first_name            # => 'John'
p bob.last_name 