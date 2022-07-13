# what is a module? 
  #containers for similar methods. also a collection of behaviors 
# What is its purpose?
  # through mixin, we can share certain methods w/ other classes
# How do we use them with our classes? 
  # we can use mixin to allow certain classes to have access to methods
  # belonging to other classes
# Create a module for the class you created in exercise 1 
# and include it properly.

module Talkable
  def whisper 
  puts "i'm whispering"
  end
end

class Person
  include Talkable
end 

me = Person.new 