require 'byebug'
class Transpose
  def self.transpose(input)
    return "" if input == ''
    initial_arrays = input.split("\n")
        # debugger
    length = initial_arrays.length
    # initial_arrays.map!{|e| e.gsub!(".", ".").split('') }

    result = []
    initial_arrays.each do |element|
      if element == length_max(initial_arrays)
        result << element.gsub!(".", " .")
            # debugger
      else
        result << element
      end
    end
    initial_arrays = result
    # debugger
    length_first_element = initial_arrays[0].length
    result = []
    i_index = 0
    while i_index < length_first_element 
      j_index = 0
      result << []
      while j_index < length
        result[i_index][j_index] = initial_arrays[j_index][i_index]
            # debugger
        # result[i_index][1] = initial_arrays[1][i_index] if i_index == length_first_element
        j_index += 1
      end
      i_index += 1
    end
            # debugger
            result
    result.map{|a| a.join('')}.join("\n")
  end

  def self.length_max(array)
    result = {}
    array.each do |element|
      result[element] = element.length
    end
    result.key(result.values.max)
  end
end

# input = <<-INPUT.gsub(/^ {6}/, '').strip
#       The longest line.
#       A long line.
#       A longer line.
#       A line.
#     INPUT

    input = <<-INPUT.gsub(/^ {6}/, '').strip
      The first line.
      The second line.
    INPUT
puts Transpose.transpose(input).to_s