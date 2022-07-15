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
  def to_s
    name
  end
  
  private 
  
  def parse_full_name(full_name)
    parts = full_name.split
    @first_name = parts[0]
    @last_name = parts.size > 1 ? parts[1] : "no name"    

  end
end 

bob = Person.new('Robert Smith')
puts "the person's name is #{bob}"

