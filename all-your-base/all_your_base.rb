require 'byebug'
class BaseConverter
  def self.convert(input_base, digits, output_base)
    raise ArgumentError if input_base <= 1 || output_base <= 1
    digits.any? {|element| raise ArgumentError if element < 0 || element >= input_base }
    result = []
    digits.reverse.each_with_index { |element, index| result << element*input_base**index }
    change_to_output_base(result.sum, output_base)
  end

  def self.change_to_output_base(number, output_base)
    result = []
    until number < output_base
      result << number % output_base
      number = number / output_base
    end
    result << number
    result.reverse
  end
end

# ==> Apply for reality
# require 'byebug'
# class BaseConverter
#   def self.convert(input_base, digits, output_base)
#     result = []
#       digits.reverse.each_with_index do |element, index|
#         result << element*input_base**index
#       end
#     result.sum

#     change_to_output_base(result.sum, output_base)
#   end

#   def self.change_to_output_base(number, output_base)
#     result = []
#     while number > output_base
#       result << char_digit(number % output_base)
#       number = number / output_base
#     end
#     result << char_digit(number)
#     result.reverse.join('')
#   end

#   def self.char_digit(index)
#     if index < 10
#       index
#     else
#       ('A'..'Z').to_a[index - 10]
#     end
#   end
# end

