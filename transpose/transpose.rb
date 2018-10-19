require 'byebug'
class Transpose
  def self.transpose(input)
    initial_arrays = input.split(" ")
    length = initial_arrays.length
    length_first_element = initial_arrays[0].length
    result = []
    index = 0
    xedni = 0
    while index < length
          # debugger
          # [["1", "2", "3", "4", "5"], 
          #  ["6", "7", "8", "9", "0"]]
      if xedni == 0 || xedni == length || xedni == length_first_element
        xedni = 0
        while  xedni < length 
              debugger
          result << split(initial_arrays)[xedni][index]
          # xedni = 0
          xedni += 1
        end 
      end
      index += 1
    end
        # debugger
    result.each_slice(length).to_a
  end

  def self.split(array)
    result = []
    array.each do |element|
      result << element.split("")
    end
    result
  end
end

input = <<-INPUT.gsub(/^ {6}/, '').strip
      12345
      67890
INPUT

# input = [
puts Transpose.transpose(input)