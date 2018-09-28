class SumNestedArray
  def self.flatten(array)
    result = []
    if array.kind_of?(Array)
      array.each do |element|
        if element.kind_of?(Integer)
          result << element
        else
          result += flatten(element)
        end
      end
    end
    result.compact
  end
  def self.to_sum(array)
    sum = 0
    arrays = self.flatten(array)
    arrays.each do |element|
      sum += element
    end
    sum
  end
end

puts SumNestedArray.to_sum([0, 2, [[2, 3], 8, [[100]], nil, [[nil]]], -2])

# def sum(array)
#     sum = 0
#     array.each do |element|
#       sum += element
#     end
#     sum
#   end