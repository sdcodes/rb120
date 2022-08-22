class BeesWax
  attr_accessor :type # this is added to replace the two commented out methods below
  
  def initialize(type)
    @type = type
  end

  # def type
  #   @type
  # end

  # def type=(t)
  #   @type = t
  # end

  def describe_type
    puts "I am a #{@type} of Bees Wax"
  end
end