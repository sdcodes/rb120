class Board
  def initialize
    # some way to model 3x3 grid. maybe squares?
    # what data structure should we use?
      # - array/hash of square objects
      # - array/hash of strings or integers?
  end 
end 

class Square
  def initialize
    # maybe a "status" to keep track of this square's mark
  end
end 

class Player
  def initialize
    # maybe a "marker" to keep track of this 
      # player's symbol (ie, x or o)
  end 

  def mark 
  end 
  
  def play
  end 
end 

