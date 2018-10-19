require 'byebug'
class OcrNumbers
  def self.convert(input)
    result = []
    initial_input = input.split("\n").join
    raise ArgumentError if input.split("\n").any? {|e| e.length == 4 } || initial_input.length < 12
    if input.split("\n").length == 12
      initial_arrays = input.split("\n").map {|e| e.split("")} 
      alter_arrays = []
      temp = split_by_value(initial_arrays, 4)
      temp_result = temp.map { |e| switch_with_3_element(e)}
      result = temp_result.join(",")
    else
      if initial_input.length == 12
        result = switch(input)
      else
        initial_arrays = input.split("\n").map {|e| e.split("")} 
        result = switch_with_3_element(initial_arrays)
      end
      result
    end
  end

  def self.split_by_value(arrays, value)
    result = []
    index = 0
    while index < arrays.length
      result << arrays.slice(index, value)
    index += value
    end
    result 
  end

  def self.switch(input)
    hash = {" _ | ||_|   " => "0",
           "     |  |   " => "1",
           " _  _||_    " => "2",
           " _  _| _|   " => "3",
           "   |_|  |   " => "4",
           " _ |_  _|   " => "5",
           " _ |_ |_|   " => "6",
           " _   |  |   " => "7",
           " _ |_||_|   " => "8",
           " _ |_| _|   " => "9",
           "     _  |   " => '?'}
    result = []
    initial_input = input.split("\n").join
    hash.keys.each do |element|
      result << hash.values[hash.keys.index(element)] if element == initial_input
    end
    result.join
  end

  def self.switch_with_3_element(input)
    alter_arrays = [] 
    input.each do |element| 
      alter_arrays << split_by_value(element, 3)
    end
    result = alter_arrays.transpose.map {|e| e.join}
    temp_result = []
    result.each { |e| switch(e) == "" ? temp_result << "?" : temp_result << switch(e) }
    temp_result.flatten.join
  end
end



