require 'byebug'
class ConvertADecimalNumberToHexadecimalNumber
  def self.switch(number)
    a = (10..15).to_a
    b = ("A".."F").to_a
    hash = Hash[a.zip b]
    hash[number] = Hash[a.zip b]
  end

  def self._2hexa(number)
    result = ''
    while number != 0 
      remainder = number % 16
      if (10..15) === remainder 
        remainder = switch(remainder)[remainder]
      else 
        remainder 
      end
      result = String(remainder) + result
      number = number / 16
    end
    result
  end
end
