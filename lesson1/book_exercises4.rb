class MyCar
  attr_writer :color
  attr_reader :year
  
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
puts my_car.year
puts my_car
my_car.color= ("black")
puts my_car

