require 'byebug'
class WordProblem
  def initialize(string)
    @string = string
  end

  def answer
    arrays = @string.gsub!('?', '').split(' ')
    remove_items = remove_element(arrays)
    switch_items = switch_element(remove_items)
    multiple_element(switch_items)
  end

  def remove_element(array)
        # debugger
    result = []
    array.each do |element|
      if element.scan(/^\-?[0-9]+$/).size == 1
        result << element
      elsif element == 'plus'
        result << element
      elsif element == "minus"
        result << element
      elsif element == "multiplied"
        result << element
      elsif element == "divided"
        result << element
      end
    end
    result
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

  def multiple_element(array)
    result = []
    length = array.length - 3
    for index in (0..length)
      result << array.slice(0,3).sum
    end
    result
  end
end

puts WordProblem.new("What is 2 multiplied by -2 multiplied by 3?").answer

def method_name(array)
  result
  for i+3 in (0..array.length)
    result << array.take(3)
  end
end
