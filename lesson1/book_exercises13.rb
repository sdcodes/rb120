module Loadable
  def able_to_load?(pounds)
    if pounds <= 400
      puts "I can carry the load" 
    else 
      puts "That's too heavy"
    end 
  end 
end

class Vehicle
  attr_accessor :color, :model, :color
  @@inherited_objects = 0

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @@inherited_objects += 1
  end
  
  def self.how_many_interited?
    @@inherited_objects
  end
  
  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end
  
  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end
  
  def current_speed
    puts "You are now going #{@current_speed} mph."
  end
  
end 



class MyCar < Vehicle
  
  def initialize(year, model, color)
      super(year, model, color)
      @current_speed = 0
  end
end

class MyTruck < Vehicle 
  attr_accessor :doors
  
  include Loadable
    
  def initialize(year, model, color, doors)
    super(year, model, color)
    @doors = doors
  end 
  
end

 car1 = MyCar.new(1990, "red", "lexus")
car1.speed_up(30)
car1.speed_up(40)
car1.brake(20)
puts car1.current_speed
truck1 = MyTruck.new(2000, "blue", "hammer", 4)
puts truck1.able_to_load?(200)
#puts car1.able_to_load?(30)
