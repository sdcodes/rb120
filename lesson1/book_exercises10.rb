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
end 



class MyCar < Vehicle
  
  def initialize(year, model, color)
      super(year, model, color)
      @current_speed = 0
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

end

class MyTruck < Vehicle 
  attr_accessor :doors
  
  def initialize(year, model, color, doors)
    super(year, model, color)
    @doors = doors
  end 
  
end 

car1 = MyCar.new(1991, "yellow", "lamina")
truck1 = MyTruck.new(1990, "red", "tamaho", 4)
truck2 = MyTruck.new(2000, "white", "tamaho", 2)
car4 = MyCar.new(1991, "yellow", "lamina")

p Vehicle.how_many_interited?


