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
    if one == two && two == three
      :equilateral
    elsif one == two || two == three || one == three
      :isosceles 
    else
      :scalene
    end
  end
  
  def check_if_valid
    if one + two < three || one + three < two || two + three < one
      raise TriangleError
    elsif one <= 0 or two <= 0 or three <= 0 
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    
  end