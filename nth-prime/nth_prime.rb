class Prime
  def self.primes?(factor)
    arr_factor = (1..factor).select { |n|factor % n == 0}
    if arr_factor.length == 2 && arr_factor[1] == factor && arr_factor[0] == 1
      return true
    else 
      return false
    end
  end

  def self.nth(number)
    array = []
    for i in (2..number) do
      if self.primes?(i) == true
        arr << i
      end
    end
    if number == 0
      raise ArgumentError.new("Please input suitable number")
    elsif number == 1
      return 2
    end
  end
end
