require 'byebug'
class Palindromes
  def initialize(min_factor=0, max_factor)
    @max_factor = max_factor
    @min_factor = min_factor
  end

  def generate
    max = @max_factor.values[0]
    @min_factor == 0 ? min = 0 : min = @min_factor.values[0]
    (min..max).to_a
  end

  def largest
    Palindrome.new(2)
  end

  def smallest
    Palindrome.new(1)
  end
end

class Palindrome
  def initialize(value)
    @value = value
  end

  def value
    2
  end

  def factors
    [2,3]
  end
end


class FirstLayer
  attr_reader :palindromes

  def initialize(number)
    palindromes = Palindromes.new(min_factor=0, max_factor)
  end

  def largest
    generate.max
  end

  def smallest
    generate.min
  end
end

class SecondLayer
  attr_reader :largest

  def initialize(number)
    largest = SecondLayer.new(number)
  end
  def value
    result = []
    generate.each do |element|
      result << element if _dromes(element)
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
end

palinds = Palindromes.new(max_factor: 99, min_factor: 10)
debugger
puts palinds
# puts l.value
# puts l.largest
# puts l.largest.value

