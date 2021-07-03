require 'byebug'
class FindNthFibonacci
  def self.find(number)
    result = 0
    if number <= 2 
      result = number
    else
      result = find(number-1) + find(number-2)
    end
    result
  end

  def self.find_without_recursion(number)
    array = (0..number).to_a
    for array_index in array do
      if array_index <= 2 
        array[array_index] = array_index
      else
        array[array_index] = array[array_index-1] + array[array_index-2]
      end
    end
    array
  end
end

# puts FindNthFibonacci.find(40)
puts FindNthFibonacci.find_without_recursion(100)
