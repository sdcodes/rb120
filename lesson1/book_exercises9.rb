class Vehicle
  attr_accessor :color, :model, :color

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
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
p car1
truck1 = MyTruck.new(1990, "red", "tamaho", 4)
p truck1



