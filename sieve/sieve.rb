class Sieve
  result = 0
  def initialize(number)
    @number = number
  end

  def self.primes?(factor)
    arr_factor = (1..factor).select { |n|factor % n == 0}
    if arr_factor.length == 2 && arr_factor[1] == factor && arr_factor[0] == 1
      return true
    else 
      return false
    end
  end

  def primes
    if @number == 1 
      result = []
    elsif @number == 2
      result = [2]
    elsif 
      for i in (2..@number) do 
        if self.primes?(i) == true 
          result << i
        end
      end
    end
  end
  result
end
