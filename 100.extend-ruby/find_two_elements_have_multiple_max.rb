require 'byebug'
class FindTwoElementsHaveMultipleMax
  def self.find_element(array)
    result = {}
    new_arrays = array.permutation(2).to_a
    new_arrays.each do |element|
      result[multiple(element)] = element
    end
    result.values.max
  end

  def self.multiple(array)
    result = 1
    array.each do |element|
      result *= element
    end
    result
  end
end

puts FindTwoElementsHaveMultipleMax.find_element([1,2,3,4,5,6,4,5,6,9,2,3,5,7,12,15])