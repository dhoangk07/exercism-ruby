require 'byebug'
class ConvertABinaryNumberToDecimal
  def self._2dec(number)
    return 0 if number == 0
    switch(number)
  end

  def self.switch(number)
    initial_arrays = number.to_s.split("")
    arrays = []
    result = []
    length = number.to_s.split("").length - 1
    (0..length).to_a.each do |element|
      arrays << 2**element
    end
    result << initial_arrays
    result << arrays.reverse
    b = []
    result.transpose.each do |element|
      b << element[0].to_i*element[1]
    end
    b.sum
  end
end

puts ConvertABinaryNumberToDecimal._2dec(100000000000000000)
