require 'byebug'
class ConvertADecimalNumberToBinary
  def self._2bin(number)
    return 0 if number == 0
    ret_bin = ''
    while(number != 0)
      ret_bin = String(number % 2) + ret_bin
      number = number / 2
    end
    ret_bin
  end
end

puts ConvertADecimalNumberToBinary._2bin(5)
