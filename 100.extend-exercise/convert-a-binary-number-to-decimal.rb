require 'byebug'
class ConvertABinaryNumberToDecimal
  def self._2dec(number)
    result = []
    number.to_s.split("").reverse.each_with_index { |digit, index| result << digit.to_i * (2**index) }
    result.sum
  end
end

puts ConvertABinaryNumberToDecimal._2dec("1011001011101111000110000")
