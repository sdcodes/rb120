class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

tv = Television.new
  # a new Television object is created

tv.manufacturer
  # an error message as manufacturer is a class method

tv.model
  # the model method is called w/ the tv object being the 
  # calling object
  
Television.manufacturer
  # the manufacturer method is called and run

Television.model
  # error message as model is an instance method and Television
  # is a class
  
  
  