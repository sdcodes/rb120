# bob = Person.new
# bob.hi

# above code provides error message.
# error message indicates that the method 'hi' is private and cannot
# be accessed by the bob instance.
# best way to fix it to do the below

class Person
  attr_writer :name
  def initialize(name)
    @name = name
  end 
  
  def other_method
     hi
  end
  
  private
  
   def hi
     puts "dance"
   end 
end

james = Person.new("james")
# puts james.hi # will throw out an error
puts james.other_method #should return 'hi' method message



