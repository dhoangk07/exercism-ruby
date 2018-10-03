require 'byebug'
class PrimeFactors
  def self.min_factor(number)
    (2..number).detect{ |n| number % n == 0}
  end
  def self.for(number)
    result = []
    while number > 1
      element = min_factor(number)
      result << element
      number = number / element
    end
    result
  end
end

#==> By Using recursion method
# class PrimeFactors
#   def self.primes?(integer)
#     (2..integer/2).each {|x| return false if (integer % x) == 0 }
#     true
#   end
#   def self.min_factor(number)
#     arr_factor = (1..number).select { |n|number % n == 0}
#     return arr_factor[1]
#   end
#   def self.for(number)
#     result = []
#     
#       result << min_factor(number)
#       divide = number/min_factor(number) 
#       if primes?(divide) == true
#         result << divide
#       else 
#         result << self.for(divide)
#       end
#     result
#   end
# end
