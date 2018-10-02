require 'byebug'
# class PhoneNumber
#   def self.clean(number)
#     result = 0
#     length_number = number.scan(/\d/).join("").length
#     result_string = number.scan(/\d/).join("")
#     punctuation_sign = number.scan(/\W/).join("")
#     if length_number == 10
#       result = result_string
#     elsif length_number < 10
#       result = nil
#     end
#     if (length_number == 11 && punctuation_sign[0] == '+') || (result_string[0] == '1' && length_number == 11)
#       result = result_string[1..-1]
#     end
#     if (result_string[0] == '0' || result_string[0] == '1' || result_string[3] == '1' || result_string[3] == "0") && length_number == 10
#       result = nil
#     end
#     if length_number == 9 || length_number == 12 || (length_number == 11 && result_string[0] != '1') || (length_number == 11 && (result_string[1] == '0' || result_string[1] == '1')) || (length_number == 11 && (result_string[4] == '0' || result_string[4] == '1'))
#       result = nil
#     end
#     result
#   end
# end
 
class PhoneNumber
  def self.clean(number)
    # (NXX)-NXX-XXXX
    length_number = number.scan(/\d/).join("").length
    result = number.scan(/\d/).join

    if length_number == 10 || length_number == 11
      if length_number == 11
        if result[0] == '1'
          result = result[1..-1]
        else
          return nil
        end
      end

      # result contains 10 digits
      if ['0', '1'].include?(result[0]) || ['0', '1'].include?(result[3])
        return nil
      end
    else
      result = nil
    end



    # if length_number == 9 || length_number == 12
    #   result = nil
    # elsif result_strings[0] == '0' || result_strings[0] == '1' || result_strings[3] == '0' || result_strings[3] == '1'
    #   result = nil
    # elsif length_number == 11 && result_strings[0] == '1' 
    #   result = result_strings[1..-1].join("")
    # elsif length_number == 10
    #   # result = result_strings.join("")
    #   # result_strings.each do |element|
    #   #   result << element
    #   # end
    #   # result.join("")
    # end
    result
  end
end
 