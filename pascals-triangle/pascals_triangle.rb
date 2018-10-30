require 'byebug'
class Triangle
  def initialize(number)
    @number = number
  end

  def rows
    result = []
    if @number == 1
      result = [[1]] 
    elsif @number == 2
      result = [[1],[1,1]]
    else
      initial_result = [[1],[1,1]]
      previous_result = Triangle.new(@number-1).rows
      element = previous_result[-1]
      result << _add(element)
      result = previous_result + result
    end
    result
  end

  def _add(array)
    index = 0
    result = [array[0]]
    while index < array.length
      result << array.slice(index, 2).sum
      index += 1
    end
    result
  end
end
