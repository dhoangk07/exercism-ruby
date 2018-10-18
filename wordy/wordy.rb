require 'byebug'
class WordProblem
  def initialize(string)
    @string = string
  end

  # def answer
    
  #   result = []
  #   ss = @string.gsub!('?', '')
  #   arrays = ss.split(' ')
  #   switch_items = switch_element(arrays)
  #   if switch_items.length == 3
  #     result << three_element(switch_items)
  #   elsif switch_items.length == 5
  #     result << five_element(switch_items)
  #   elsif switch_items.length < 3
  #     raise ArgumentError
  #   end
  #   result[0]
  # end

  def answer
    result = []
    ss = @string.gsub!('?', '')
    arrays = ss.split(' ')
        debugger
    switch_items = switch_element(arrays)
    raise ArgumentError if switch_items.length < 3
    initial_arrays = switch_items.shift(3)
        debugger
    result << three_element(initial_arrays)
    result << switch_items
        debugger
    three_element(result.flatten)
  end

  def switch_element(array)
    result = []
    array.each do |element|
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
        debugger
    handle_simple_expression(array[0], array[1], array[2])
  end
  # [[1, 2, 3], [4, 5]]
  def five_element(array)
    slice_arrays =  array.each_slice(3).to_a
    result = []
    slice_arrays.each do |element|
      if element.length == 3
        result << three_element(element)
      else
        result << element
      end
    end
    three_element(result.flatten)
  end

  def handle_simple_expression(operand_1, operator, operand_2)
    if operator == 0 && operand_2 ==0
          debugger
      return operand_1
    else
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
end

# puts WordProblem.new("Who is the President of the United States?").answer

puts WordProblem.new("What is -1 plus -10?").answer

  # def multiple_element(array)
  #   result = []
  #   array.each_slice(3) do |element|
  #     result << element
  #   end
  #   result
  # end