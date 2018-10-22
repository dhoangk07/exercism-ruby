require 'byebug'
class Palindromes
  def initialize(max_factor:, min_factor:)
        debugger
    @max_factor = max_factor
    @min_factor = min_factor
  end

  def generate
    # max = @max_factor.values[0]
    # @min_factor == 0 ? min = 0 : min = @min_factor.values[0]
    max = @max_factor
    min = @min_factor
    initial_arrays = (min..max).to_a
    a = (min..max).to_a
    b = a.reverse
    i_index = 2
    result = []
    a.each do |element|
      b.each do |ele|
        result << [ele, element] if _dromes(ele * element) 
            debugger
      end
    end
    final = []
    result.each do |element|
      final << element if _dromes(element[0] * element[1]) && element[0] * element[1] != 0
    end
    final
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

  def largest
    # largest = Palindrome.new(generate)
    # largest
    a = generate.values.max
    b = generate.keys.max
    largest = Palindrome.new(a, b)
  end

  def smallest
    a = generate.values.max
    b = generate.keys.max
    smallest = Palindrome.new(a, b)
    smallest
  end
end

class Palindrome
  def initialize(value, factors)
    @value = value
    @factors = factors
  end

  def value
    result = {}
    @generate.each do |element|
      result[[element[0], element[1]]] = element[0] * element[1]
    end
    @value = result.values
  end

  def factors
    result = {}
    @generate.each do |element|
      result[[element[0], element[1]]] = element[0] * element[1]
    end
    @factors = result.keys
  end
end


 palindromes = Palindromes.new(max_factor: 99, min_factor: 10)
   puts palindromes.generate
# a = [3,4,5]

# min = a.min
# max = a.max


# class Palindrome
#   def initialize(generate)
#     @generate = generate
#   end

#   def value
#     result = {}
#     @generate.each do |element|
#       result[[element[0], element[1]]] = element[0] * element[1]
#     end
#         debugger
#     result.values
#   end

#   def factors
#     result = {}
#     @generate.each do |element|
#       result[[element[0], element[1]]] = element[0] * element[1]
#     end
#     result.keys
#   end
# end

# palindromes = Palindromes.new(max_factor: 99, min_factor: 10)
#   puts  palindromes.generate
#     debugger
#   puts  smallest = palindromes.smallest
#   puts smallest.value