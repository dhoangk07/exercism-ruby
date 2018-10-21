require 'byebug'
class WordProblem
  def initialize(string)
    @string = string
  end

  def answer
    result = []
    arrays = @string.gsub!('?', '').split(' ')
    switch_items = switch_element(arrays)
    raise ArgumentError if switch_items.length < 3
    index = 3
    final = []
    length = switch_items.length 
    while index < length 
      first = three_element(switch_items[0..2])
      result << first
      remain_array = remain_array(switch_items, switch_items[0..2])
      switch_items = []
      switch_items << [result, remain_array ].flatten
      length = switch_items.flatten.length
      index += 1
    end
    return three_element(switch_items.flatten)
  end

  def remain_array(exist_array, _minus_array)
    index = exist_array.index(_minus_array.first)
    length = _minus_array.length
    exist_array.slice!(index, length)
    exist_array
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
    handle_simple_expression(array[0], array[1], array[2])
  end

  def handle_simple_expression(operand_1, operator, operand_2)
    if operator == 0 && operand_2 == 0
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

puts WordProblem.new("What is 33 divided by -3?").answer