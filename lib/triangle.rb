class Triangle
  # write code here
  attr_accessor :one, :two, :three
  
  
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end
  
  def kind
    
  end
  
end

class TriangleError < StandardError
  def message
    "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side."
  end
end