require 'byebug'
class Isogram
  def self.uniq(input)
    result = []
    arrays = input.downcase.scan(/\w+/).join('').split("")
    arrays.each do |element|
      result << element if result.join.include?(element) == false
    end
    result
  end
  def self.isogram?(string)
    a = string.downcase.scan(/\w+/).join("").split("")
    a.length == self.uniq(string).length
  end
end 

