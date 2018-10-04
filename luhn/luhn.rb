require 'byebug'
class Luhn
  def self.valid?(string)
    if string.to_i == 1 || string.scan(/[a-z]/).size == 1 || string.scan(/[0-9]/) == ["0"] ||
       string.scan(/[-]/).size >= 1 || string.scan(/[£]/).size == 1 
      return false
    elsif string.scan(/[0]\s[0]/).size == 1
      return true
    else
      initial_arrays = string.scan(/\w+/).join.split("")
      reverse_arrays = initial_arrays.reverse
      result = []
      reverse_arrays.each_with_index do |element, index|
        if index % 2 == 1
          if 2*element.to_i > 9
            result << 2*element.to_i - 9
          else
            result << 2*element.to_i
          end
        else index % 2 == 0
          result << element.to_i
        end
      end
      return true if result.sum % 10 == 0
      return false if result.sum % 10 != 0
    end
  end
end

puts Luhn.valid?("055-444-285")
