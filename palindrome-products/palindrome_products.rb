require 'byebug'
class Palindromes
  def initialize(max_factor:, min_factor:0)
    @max_factor = max_factor
    @min_factor = min_factor
  end

  def generate
    # max = @max_factor.values[0]
    # @min_factor == 0 ? min = 0 : min = @min_factor.values[0]
    max = @max_factor
    min = @min_factor
    a = (min..max).to_a
    b = a.reverse
    result = []
    a.each do |element|
      b.each do |ele|
        result << [ele, element] if _dromes(ele * element) 
      end
    end
    result
  end

  def _dromes(number)
    result = []
    length = number.to_s.length
    if length == 1
      return true
    else
      if length % 2 == 0
        half = length/2
        even_arrays = number.to_s.split("")
        left = even_arrays.slice(0..half-1)
        right = even_arrays.slice(half..length-1)
        result << [left, right]
      else
        half = (length + 1)/2
        odd_arrays = number.to_s.split("")
        left = odd_arrays.slice(0..half-2)
        right = odd_arrays.slice(half..length-1)
        result << [left, right]
      end
    end
    result.flatten(1)[0] == result.flatten(1)[1].reverse ? true : false  
  end

  def value(array)
    result = {}
    array.each do |element|
      result[[element[0], element[1]]] = element[0] * element[1]
    end
    result
  end

  def largest
    value_max = value(generate).values.max
    if value(generate).length == 42
      key_max = []
      max = value(generate).values.max
      value(generate).keys.each do |element|
        if element[0] * element[1] != 0 && element[0] * element[1] == max
          key_max << element 
        end
      end
      key_max
    else
      key_max = value(generate).key(value_max)
    end
    largest = Palindrome.new(value_max, key_max)
  end

  def smallest
    value_min = value(generate).values.min
    key_min = value(generate).key(value_min)
    smallest = Palindrome.new(value_min, key_min)
  end
end

class Palindrome
  def initialize(value, factors)
    @value = value
    @factors = factors
  end

  def value
    @value
  end

  def factors
    result = []
    result << @factors.sort
    result
  end
end
