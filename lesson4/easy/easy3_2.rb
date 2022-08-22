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

message = Hello.new
puts message.hi

# OR 

class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  
  def self.hi
    "messages of hi"
  end 
  
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

p Hello.hi
