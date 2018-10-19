require 'byebug'
class PerfectNumber
  def self.classify(number)
    raise RuntimeError if number < 0
    if find_aliquot(number).sum == number
      return 'perfect'
    elsif find_aliquot(number).sum > number
      return 'abundant'
    elsif find_aliquot(number).sum < number
      return 'deficient'
    end
  end

  def self.find_aliquot(number)
    (1..number-1).select {|x| number % x == 0 }
  end
end

