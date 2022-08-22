class Cube
  def initialize(volume)
    @volume = volume
  end
  
  def volume
    @volume
  end 
end

# OR 

class Cube
  attr_reader :volume
  def initialize(volume)
    @volume = volume
  end
end