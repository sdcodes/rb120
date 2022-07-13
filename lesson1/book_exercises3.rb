class MyCar
  
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(miles)
    @current_speed += miles
  end

  def brake(miles)
    @current_speed -= miles
  end
  
  def shut_off
    @current_speed = 0
  end
  
  def current_speed
    @current_speed
  end
  
end

my_car = MyCar.new(1991, "red", "civic")
my_car.speed_up(50)
my_car.brake(10)
p my_car.current_speed
p my_car.shut_off
p my_car.current_speed


