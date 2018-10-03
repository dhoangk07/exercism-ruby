class FindMaxElementOfArray
  def self.find_max(array)
    return array.first if array.size == 1

    first = array.first
    rest = array[1..-1]
    rest_max = find_max(rest)
    if first > rest_max
      first
    else
      rest_max
    end

  end
end

puts FindMaxElementOfArray.find_max([2,3,4,7,-4])