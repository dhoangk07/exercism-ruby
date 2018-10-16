require "byebug"
class RotationalCipher
  def self.rotate(string, value)
    initial_arrays = string.split('')
    result = []
    initial_arrays.each do |element|
      if element == " "
        result << " "
      elsif element == element.upcase
        result << switch(element.upcase, value)
      elsif element.scan(/[0-9]/).length >= 1
        result << element
      else
        result << switch(element, value)
      end
    end
    result.join.upcase
  end

  def self.switch(word, value)
    lowercase_arrays = ('a'..'z').to_a
    index = lowercase_arrays.index(word.downcase)
    range = index + value
    result = 0
    if range < 26
      result = lowercase_arrays[range]
    elsif range > 26
      result = lowercase_arrays[26 - range]
    else 
      result = lowercase_arrays[0]
    end
    result
  end

end

puts RotationalCipher.rotate("O M G", 5)