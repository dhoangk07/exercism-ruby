require "byebug"
class Triangle
  def initialize(array)
    @array = array
  end
  def is_triangle?(array)
    sorted = array.sort
    greatest_side = sorted.pop
    greatest_side < sorted.sum
  end
  def equilateral?
    return false if @array.uniq == [0]
    return true if @array.uniq.length == 1 
  end
  def isosceles?
    return true if is_triangle?(@array) && @array.uniq.length == 2 || equilateral?
  end
  def scalene?
    return true if @array.uniq.length == 3 && is_triangle?(@array)
  end
end

puts Triangle.new([4, 4, 4]).equilateral?
