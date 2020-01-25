class Triangle
  # write code here
  attr_reader :side_1, :side_2, :side_3
  @sides = []
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides = [side_1, side_2, side_3]
  end
  
  def kind
    if valid? == false
      raise TriangleError 
    elsif side_1 == side_2 && side_2 == side_3
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
    @sides.each do |length|
      if(length <= 0)
        return true
      end
    end
  end
end 


class TriangleError < StandardError

end
