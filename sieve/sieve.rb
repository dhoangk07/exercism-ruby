class Sieve
  result = 0
  def initialize(number)
    @number = number
  end

  def primes?
    arr_factor = (1..@number).select { |n|@number % n == 0}
    if arr_factor.length == 2 && arr_factor[1] == @number && arr_factor[0] == 1
      return true
    else 
      return false
    end
  end

  def primes
    result = []
    if @number == 1 
      result = []
    elsif @number == 2
      result = [2]
    elsif 
      for i in (2..@number) do 
        if Sieve.new(i).primes? == true 
          result << i
        end
      end
    end
    result
  end
end
