require "byebug"
class RotationalCipher
  def self.rotate(string, value)
    initial_arrays = string.split('')
    result = []
    initial_arrays.each do |element|
      if element == ' '
        result << " "
      elsif upcase?(element)
        result << switch(element, value).upcase  
      elsif lowercase?(element)
        result << switch(element, value)  
      elsif integer?(element)
        result << element
      else
        result << element
      end
    end
    result.join
  end

  def self.switch(word, value)
    index = ('a'..'z').to_a.index(word.downcase)
    range = index + value - 26
    ('a'..'z').to_a[range]
  end

  def self.upcase?(word)
    return true if ("A".."Z").include?(word) == true
  end

  def self.lowercase?(word)
    return true if ("a".."z").include?(word) == true
  end

  def self.integer?(number)
    return true if ("0".."9").include?(number) == true
  end
end
