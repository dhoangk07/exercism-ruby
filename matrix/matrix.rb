require 'byebug'
class Matrix
  def initialize(string)
    @string = string
    @initialize_arrays =[]
    @string.each_line do |element|
      pure_string = element.gsub("\n",'').split(" ")
      @initialize_arrays << to_integer(pure_string)
    end
  end

  def rows
    @initialize_arrays
  end

  def columns
    @initialize_arrays.transpose
  end

  def to_integer(array)
    result = []
      array.each do |element|
        result << element.to_i
      end
    result
  end
end



  