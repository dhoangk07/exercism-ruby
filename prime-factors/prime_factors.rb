require 'byebug'
class PrimeFactors
  def self.primes?(integer)
    (2..integer/2).each {|x| return false if (integer % x) == 0 }
    true
  end
  def self.for(number)
        debugger
    arr_factor = (1..number).select { |n|number % n == 0}
    result = []
    # result << element[0]
    arr_factor[1..-2].each do |element|
      if self.primes?(element) == true
        result << element
      else 
        result << self.for(element)
      end
    end
    result.flatten
  end
end

puts PrimeFactors.for(27)