class Squares
  def initialize(number)
    @ranges = (1..number).to_a
  end

  def square_of_sum
    (@ranges.sum)**2
  end

  def sum_of_squares
    arr = []
    @ranges.each do |ele|
      arr << ele**2
    end
    arr.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

