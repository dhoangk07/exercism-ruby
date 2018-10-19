require 'byebug'
class Stack
  def initialize
    @stack = []
  end

  def push(element)
    @stack << element
  end

  def pop
    @stack.pop
  end

  def length
    @stack.length
  end
end

class Brackets
  def self.paired?(input)
    stack = Stack.new
    input.each_char do |element|
      if open_bracket?(element)
        stack.push(element)
      elsif close_bracket?(element)
        return false unless match_bracket?(element, stack.pop)
      end
    end
    stack.length <= 0
  end

  def self.open_bracket?(element)
    ['(', '{','['].include?(element)
  end

  def self.close_bracket?(element)
    [')', '}',']'].include?(element)
  end

  def self.match_bracket?(close_bracket, open_bracket)
    case close_bracket
    when ')'
      open_bracket == '('
    when ']'
      open_bracket == '['
    when '}'
      open_bracket == '{'
    else
      false
    end
  end
end