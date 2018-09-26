class Grains
  result = 0
  def self.square(number)
    if number == 1
      result = 1
    elsif number == 2
      result = 2
    elsif number == 3
      result = 4
    else
      result = 2**number
    end
    result
  end
  def self.total(number)
    @ranges = (1..number).to_a
    arr = []
    @ranges.each do |element|
      arr << element ** 2
    end
    arr.sum
  end
end