class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# case 1

hello = Hello.new
hello.hi
 # a new instance of Hello is created. the method hi 
 # is called which uses the method greet found in Greeting
 # will output => "Hello"
 
# case 2
hello = Hello.new
hello.bye
# error as Hello doesn't have a bye method and Greeting doesnt
# have one either

# case 3 
hello = Hello.new
hello.greet
# a new instance is created. the method greet is found
# by ruby going up the chain until it finds the method in 
# Greeting but in this case, an error will be down
# as greet requires an argument to be passed to it

# case 4
hello = Hello.new
hello.greet("Goodbye")
# similar to what occurs in case 3 except this time, an 
# argument is passed so the method outputs "Goodbye"

# case 5
Hello.hi
  # error message is given as hi is an instance method, not
  # a class method and Hello is a class
  

 
 
 