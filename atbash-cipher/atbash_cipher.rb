require 'byebug'
class Atbash
  def self.encode(string)
    initial_arrays = string.scan(/[a-zA-Z\d]/).join.downcase.split("")
    result = []
    final = []
    initial_arrays.each { |element| result << switch(element) }
    result.each_slice(5){ |element| final << element.join }
    final.join(" ")
  end

  def self.switch(word)
    arrays = ("a".."z").to_a
    index = arrays.index(word)
    if ("0".."9").to_a.include?(word)
      return word
    else
      return arrays[25-index]
    end
  end
end


