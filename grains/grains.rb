class Grains
  result = 0
  def self.square(number)
    if 0 >= number || number > 64
      raise ArgumentError.new("Please input suitable number")
    elsif number == 1
      result = 1
    elsif number == 2
      result = 2
    elsif number == 3
      result = 4
    else
      result = 2 ** (number-1)
    end
    result
  end
  def self.total
    @ranges = (0..63).to_a
    arr = []
    @ranges.each do |element|
      arr << 2 ** element
    end
    arr.sum
  end
end
