require 'pry'
class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
 
  def initialize(length_1, length_2,length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    if @length_1 <=0 || @length_2 <=0 || @length_3 <=0 
        raise TriangleError
      # rescue TriangleError => error #the goal is for our test to pass, and having the rescue in the code will never make it pass.
          # puts error.message #the tests are looking for an error which the rescue prevents. 
      elsif @length_1 + @length_2 < @length_3 || @length_1 + @length_3 < @length_2 || @length_2 + @length_3 < @length_1
        raise TriangleError
      elsif @length_1 + @length_2 == @length_3 || @length_1 + @length_3 == @length_2 || @length_2 + @length_3 == @length_1
        raise TriangleError
      elsif @length_1 == @length_2 && @length_2 == @length_3
      :equilateral
      elsif @length_1 == @length_2 || @length_2 == @length_3 || @length_1 == @length_3 
      :isosceles
    else
      :scalene
    end
  end


  class TriangleError < StandardError
    # def message
    #   "testing this error message"
    # end
  end

end
