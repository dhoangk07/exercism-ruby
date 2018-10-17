require 'byebug'
class WordProblem
  def initialize(string)
    @string = string

  end

  def answer
    
    result = []
    ss = @string.gsub!('?', '')
    arrays = ss.split(' ')
    switch_items = switch_element(arrays)
    if switch_items.length == 3
      result << three_element(switch_items)
    elsif switch_items.length == 5
      result << five_element(switch_items)
    elsif switch_items.length < 3
      raise ArgumentError
    end
    result[0]
  end

  def switch_element(array)
    result = []
    array.each do |element|
          # debugger
      if element.scan(/^\-?[0-9]+$/).size == 1
        result << element
      elsif element == 'plus'
        result << "+"
      elsif element == 'minus'
        result << "-"
      elsif element == 'multiplied'
        result << "*"
      elsif element == 'divided'
        result << "/"
      end
    end
    result
  end

  def three_element(array)
    handle_simple_expression(array[0], array[1], array[2])
  end
  # [[1, 2, 3], [4, 5]]
  def five_element(array)
        # debugger
    slice_arrays =  array.each_slice(3).to_a
    result = []
    slice_arrays.each do |element|
          # debugger
      if element.length == 3
        result << three_element(element)
      else
        result << element
      end
    end
    three_element(result.flatten)
  end

  def handle_simple_expression(operand_1, operator, operand_2)
    case operator
    when '*'
      operand_1.to_i * operand_2.to_i
    when '+'
      operand_1.to_i + operand_2.to_i
    when '/'
      operand_1.to_i / operand_2.to_i
    when '-'
      operand_1.to_i - operand_2.to_i
    end
  end
end

# puts WordProblem.new("Who is the President of the United States?").answer

puts WordProblem.new("What is -3 plus 7 multiplied by -2?").answer

  # def multiple_element(array)
  #   result = []
  #   array.each_slice(3) do |element|
  #     result << element
  #   end
  #   result
  # end