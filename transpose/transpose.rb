require 'byebug'
class Transpose
  def self.transpose(input)
    return "" if input == ''
    initial_arrays = input.split("\n")
    length = initial_arrays.length
    initial_arrays.map!{ |e| e.split('') }
    initial_arrays = rectangle_matrix(initial_arrays)
    length_first_element = initial_arrays[0].length
    result = []
    i_index = 0
    while i_index < length_first_element 
      j_index = 0
      result << []
      while j_index < length
        result[i_index][j_index] = initial_arrays[j_index][i_index]
        j_index += 1
      end
      i_index += 1
    end
    result.map{|a| a.join('')}.join("\n").strip
  end

  def self.length_max(array)
    result = {}
    array.each { |element| result[element] = element.length }
    result.key(result.values.max)
  end

  def self.rectangle_matrix(array)
    result = []
    array.each { |element| result << element.length }
    final = []
    array.each do |element|
      char_times = result.max - element.length
      if element.length < result.max
        char_times.times do |n|
          element << " "
        end
          final << [element].flatten
      elsif element.length == result.max
        final << element
      end
    end
    final
  end
end
