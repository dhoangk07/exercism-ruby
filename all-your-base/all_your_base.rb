require 'byebug'
class BaseConverter
  def self.convert(input_base, digits, output_base)
    length_input = digits.length
    array_digits = []
    (0..length_input-1).to_a.each do |element|
      array_digits << input_base ** element
    end
    generate_number = combine(digits, array_digits.reverse).sum
    return generate_number.to_s(output_base)
  end

  def self.combine(array_1,array_2)
    new_arrays = array_1.zip array_2
    result = []
    new_arrays.each do |element|
          debugger
      result << element[0]*element[1]
    end
    result
  end

  def self.change_to_output_base(number, output_base)
    result = ''
    while quotient(number, output_base) > output_base
          debugger
      a = quotient(number, output_base)
      result = (number % output_base).to_s + result
      number = quotient(a, output_base)
    end
    result
  end

  def self.quotient(number, output_base)
    (number - (number % output_base))/output_base
  end
end


# puts BaseConverter.convert(97, [3, 46, 60], 73)

puts BaseConverter.change_to_output_base(32474, 73)

puts BaseConverter.quotient(32474, 73)