require 'byebug'
class RunLengthEncoding
  def self.encode(input)
    arrays = input.split("")
    length = arrays.length
    final = ''
    index = 0
    while index < length
      sub_len = 1
      while (index + sub_len < length) && arrays[index] == arrays[index + sub_len] 
        sub_len += 1
      end
      sub_len > 1 ? final += "#{sub_len}#{arrays[index]}" : final += "#{arrays[index]}"
      index += sub_len
    end
    final
  end

  def self.decode(input)
    arrays = input.split("")
    length = arrays.length
    index = 0
    number = ''
    final = ''
    while index < length
      if _integer?(arrays[index])
        number += arrays[index]
      else
        number == '' ? final += print_inline(1, arrays[index]) : final += print_inline(number.to_i, arrays[index]) 
        number = ''
      end
      index += 1
    end
    final
  end

  def self._integer?(input)
    '0'.ord <= input.ord && input.ord <= '9'.ord
  end

  def self.print_inline(number, element)
    element * number
  end
end



















