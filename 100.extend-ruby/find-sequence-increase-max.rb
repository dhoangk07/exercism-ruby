require 'byebug'
class FindSequenceIncreaseMax
  def self.find_sequence(array)
    result = {}
    count = 1
    for index in 0..array.length-1
      if (array[index+1] != nil) && (array[index+1] > array[index]) 
            # debugger
        count += 1
      else 
        result[index-count+1] = count
        count = 1
        count += 1 if (array[index+1] != nil) && (array[index+1] > array[index]) 
      end
    end
    result
  end
end

puts FindSequenceIncreaseMax.find_sequence([1,3,7,1,2,3,1,6,7,2,1,3,4])