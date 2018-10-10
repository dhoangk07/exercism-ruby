require 'byebug'
class ConvertAHexadecimalNumberToDecimalNumber
  def self._2dec(number)
    number_arrays = number.split("")
    result = []
    arrays = []
    length = number.to_s.split("").length - 1
    b = []
    (0..length).to_a.each do |element|
      arrays << 16**element
    end
    result << change(number)
    result << arrays.reverse
    result.transpose.each do |element|
      b << element[0].to_i*element[1]
    end
    b.sum
  end

  def self.switch(number)
    a = (10..15).to_a
    b = ("A".."F").to_a
    hash = Hash[b.zip a]
    hash[number]
  end

  def self.change(array)
      change = []
    array.split("").each do |element|
      if  ("A".."F") === element
        change << switch(element).to_s
      else
        change << element.to_s 
      end
    end
    change
  end
end

puts ConvertAHexadecimalNumberToDecimalNumber._2dec('302A')
