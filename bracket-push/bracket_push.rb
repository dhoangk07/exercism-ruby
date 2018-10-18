require 'byebug'
class Brackets
  def self.paired?(input)
    string = input.scan(/[(){}\[\]]/).join
    if string.length.odd?
      return false 
    else
      result = []
      new_arrays = string.split("")
      for index in 0..new_arrays.length
        slice_arrays = new_arrays.slice(index, 2)
          if pure_bracket?(slice_arrays.join)
            new_arrays.slice!(index, 2)
          end
        result << new_arrays if new_arrays.length == 2
      end
      pure_bracket?(result.join)
    end
  end
# ('{[])')
  def self.pure_bracket?(string)
    if brackets?(string) || braces?(string) || parentheses?(string) || string == ''
      return true 
    else
      false
    end
  end

  def self.brackets?(string)
    string.include?("[]") && string.include?("[") && string.include?("]")
  end

  def self.braces?(string)
    string.include?("{}") && string.include?("{") && string.include?("}")
  end

  def self.parentheses?(string)
    string.include?("()") && string.include?("(") && string.include?(")")
  end
end

puts Brackets.paired?('{[])')
