require 'byebug'
class Atbash
  def self.reverse(array)
    rev = []
    rev << array.pop until array.empty?
    rev
  end 

  def self.initial_hash
    a = ('a'..'z').to_a
    b = a.reverse
    hash = Hash[a.zip b]
  end

  def self.slice_five(array)
    new_array = array.each_slice(5).to_a
    result = []
    new_array.each do |element|
      result << element.join
    end
    result.join(" ")
  end
  
  def self.encode(string)
    arrays = string.downcase.scan(/\w+/).join("").split("")
    result = []
    arrays.each do |element|
      if element.scan(/^\-?[0-9]+$/).size == 1
        result << element
      else
        result << initial_hash[element]
      end
    end
    slice_five(result)
  end
end

# puts Atbash.encode('The quick brown fox jumps over the lazy dog.')



