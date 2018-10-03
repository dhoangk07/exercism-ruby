class GenerateArray
  def self.switch_element(array)
    result[element] = 
    array.each do |element|
      while switch_element[element] != array do
        array[element] << element+1
      end
    end
    array[element]
  end
end

puts GenerateArray.switch_element([1,2,3])