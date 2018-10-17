require 'byebug'
class SumOfMultiples
  def initialize(num1=0, num2=0, num3=0)
    return 0 if @num1 == 0 && @num2 == 0 && @num3 == 0
    @num1 = num1
    @num2 = num2
    @num3 = num3
  end

  def to(value)
    result = []
    result << multiple(@num1, value)
    result << multiple(@num2, value) if @num2 != 0
    result << multiple(@num3, value) if @num3 != 0
    result.flatten.uniq.sum
  end

  def multiple(number, value)
    result = []
    for index in 1..100000
      result << number * index if number * index < value
    end
    result
  end
end

