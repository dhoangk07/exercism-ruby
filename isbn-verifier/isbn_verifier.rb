require 'byebug'
class IsbnVerifier
  def self.change_to_i(string)
      arrays = string.scan(/\w+/)[0..-1].join.split("")
    if string.split("")[-1] == "X"
      arrays.map! { |x| x == "X" ? '10' : x }
    end
    if arrays.length != 10 || (arrays.join.scan(/[a-zA-Z]/).join.kind_of?(String) == true && arrays.join.scan(/[a-zA-Z]/) != [])
      return false
    else
      result = []
      arrays.each do |element|
        result << element.to_i
      end
      result
    end
  end

  def self.valid?(string)
    arrays = self.change_to_i(string)
    return false if arrays == false 
    integer_array = (1..10).to_a.reverse
    result = arrays.zip(integer_array).map{|x, y| x * y}
    return true if result.sum % 11 == 0
  end
end

# puts IsbnVerifier.valid?('3598215088')
# puts IsbnVerifier.change_to_i("359821507X")
