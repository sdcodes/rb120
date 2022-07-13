class MyCar
  attr_writer :color
  attr_reader :year
  
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def gas_mileage(gas, miles)
    miles/gas
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
  
  def spray_paint(new_color)
    @color = new_color
    puts "your car has been painted #{new_color}"
  end
end

my_car = MyCar.new(1991, "red", "civic")
puts my_car
puts my_car.gas_mileage(5, 100)
