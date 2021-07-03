require 'byebug'
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
    result
  end
end
 