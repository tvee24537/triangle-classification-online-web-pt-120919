class Triangle
  # write code here
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind
    valid?
    if side_1 == side_2 && side_2 == side_3
      return :equilateral
    elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      return :isosceles
    else
      return :scalene
    end
  end
 
  def valid?
    valid_triangle = [(side_1 + side_2 > side_3), (side_1 + side_3 > side_2), (side_2 + side_3 > side_1)]
    
    [side_1, side_2, side_3].each { |length| valid_triangle << false if length <= 0 }
    raise TriangleError if valid_triangle.include?(false)
  end
end 


class TriangleError < StandardError

end
