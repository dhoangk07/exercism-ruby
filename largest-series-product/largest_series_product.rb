require "byebug"
class Series
  def initialize(number)
    @number = number
  end

  def largest_product(series)
        debugger
    number_arrays = @number.split("")
    raise ArgumentError if (series < 0 || @number.scan(/[a-z]/).size == 1 || @number.length < series)
    return 1 if series == 0 && @number == ""
    result = []
    # number_arrays.each |element| do
          debugger
      shift_arrays = number_arrays.shift
      first_arrays = shift_arrays.take(series)
      result << multiple(first_arrays)
    end
    result
  end
# number_arrays.each do |element|
#       a = number_arrays.take(series)
#       result << a
  def multiple(array)
    result = 1
    array.each do |element|
      result *= element.to_i
    end
    result
  end

  
end

# puts Series.take_array_around_max([1,2,3,8,15,7,2,3,4],4)
puts Series.new('73167176531330624919225119674426574742355349194934').largest_product(6)
# puts Series.new('').largest_product(0)






# new_arrays = number_arrays.each_slice(series).to_a
# result = []
# while new_arrays.empty? do
#   split_arrays = new_arrays.pop
#   split_arrays.each do |element|
#         debugger
#     result << multiple(element)
#   end
# end














# def take_array_around_max(array, value)
#     # split_arrays = array.to_i.split('')
#         debugger
#     hash = {}
#     result = []
#     array.each_with_index do |element, index|
#       hash[element] = index
#     end
#     hash[array.max]
#     range = (hash[array.max] - (value-1)).abs
#     if array.last == array.max 
#           debugger
#       result << array[range..-1]
#     elsif array.first == array.max 
#       result << array[0..range]
#     else 
#       result_left = []
#       result_right = []
#       result_left << array[range..hash[array.max]]
#       result_right << array[hash[array.max]..(hash[array.max]+value-1)]
#       if multiple(result_left.flatten) > multiple(result_right.flatten)
#         result << result_left.flatten
#       else 
#         result << result_right.flatten
#       end
#     end
#     result.flatten
#   end