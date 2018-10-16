require "byebug"
class Series
  def initialize(number)
    @number = number
    raise ArgumentError if @number.scan(/[a-z]/).length >= 1
  end

  def largest_product(value)
    result = []
    length_value = @number.length - value
    arrays = @number.split("")
    raise ArgumentError if length_value < 0 || value < 0 
    for element in (0..length_value)
      slice_array = arrays.slice(element, value)
      result << multiple_element(slice_array)
    end
    result.max
  end

  def multiple_element(array)
    result = 1
    array.each { |item| result *= item.to_i }
    result
  end
end
