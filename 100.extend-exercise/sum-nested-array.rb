class SumNestedArray
  def self.sum(array)
    result = 0
    if array.kind_of?(Array)
      array.each do |element|
        if element.kind_of?(Integer)
          result += element
        elsif element.kind_of?(Array)
          result += sum(element)
        end
      end
    end
    result
  end
end

puts SumNestedArray.sum([0, 2, [[2, 3], 8, [[100]], nil, [[nil]]], -2])
