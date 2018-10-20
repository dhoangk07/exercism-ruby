require 'byebug'
class Matrix
  def initialize(matrix)
    @initialize_arrays =[]
    matrix.each_line do |element|
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
    array.each { |element| result << element.to_i }
    result
  end

  def saddle_points
    length_rows = @initialize_arrays.length
    rows = @initialize_arrays
    columns = @initialize_arrays.transpose
    result =[]
    index_row = 0
    while index_row < length_rows
      index_max = rows[index_row].index(rows[index_row].max)
      if rows[index_row].max == columns[index_max].min 
        result << [index_row, index_max]
      end
        index_row += 1
    end
    result
  end
end

