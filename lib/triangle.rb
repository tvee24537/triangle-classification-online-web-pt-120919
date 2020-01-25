class Triangle
  # write code here
  def initialize(side_1, side_2, side_3)
    @side_length = []
    @side_length << side_1
    @side_length << side_2
    @side_length << side_3
  end
  def kind
    if valid?
      if @side_length.uniq.length == 1
        return :equilateral
      elsif @side_length.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end
end  
  def valid?
    sum_one_two = @side_length[0] + @side_length[1]
    sum_one_three = @side_length[0] + @side_length[2]
    sum_two_three = @side_length[1] + @side_length[2]

    if (@side_length.none? {|side| side <= 0}) &&
      (sum_one_two > @side_length[2] && sum_one_three > @side_length[1] && sum_two_three > @side_length[0])
      return true
    else
      return false
    end
  end



class TriangleError < StandardError

end
