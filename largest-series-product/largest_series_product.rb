require "byebug"
class Series
  def initialize(number)
    @number = number
  end

  # def largest_product(series)
  #   number_arrays = @number.split("")
  #   raise ArgumentError if (series < 0 || @number.scan(/[a-z]/).size == 1 || @number.length < series)
  #   return 1 if series == 0 && @number == ""
  #   result = []
  #     while 
  #   end
  #   result
  # end

  # def take_array(array, value)
  #   result = []
  #   take_array = array.take(6)
  #   shift_arrays = array.shift
  #   result << multiple(array)
  # end

  # def multiple(array)
  #   result = 1
  #   array.each do |element|
  #     result *= element.to_i
  #   end
  #   result
  # end

  def self.take_array(array, value)
    result = ""
    final_result = []
    initial_arrays = array.split("")
    take_arrays = initial_arrays.take(value)
    while initial_arrays.length > take_arrays.length do
          debugger
      result = remain_array(initial_arrays) + result
      take_arrays = remain_array.take(value)
      final_result << multiple(take_arrays)
    end
    final_result
  end

  def self.multiple(array)
    result = 1
    array.each do |element|
      result *= element.to_i
    end
    result
  end

  def self.remain_array(array)
    array.shift
    array
  end
end

# puts Series.new('73167176531330624919225119674426574742355349194934').largest_product(6)

puts Series.take_array('73167176531330624919225119674426574742355349194934', 6)
