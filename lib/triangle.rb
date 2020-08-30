class Triangle
  # write code here
  attr_accessor :one, :two, :three
  
  
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end
  
  def kind
    check_if_valid
    if one + two == two + three
      :equilateral
    elsif one == two || two == three || one == three
      :isosceles 
    else
      :scalene
    end
  end
  
  def check_if_valid
    if one == two && two == three
      raise TriangleError
    elsif one + two <= three || one + three <= two || two + three <= one
      raise TriangleError
    else
    end
  end
  
end

class TriangleError < StandardError
  def message
    "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side."
  end
end