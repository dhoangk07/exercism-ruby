class Prime
  def self.primes?(integer)
    (2..integer/2).each {|x| return false if (integer % x) == 0 }
    true
  end

  def self.nth(number)
    count = 0
    i = 2
    raise ArgumentError if number == 0
    while count < number-1 do
        i += 1 
        if self.primes?(i) == true
          count += 1
        end
    end
    i
  end
end

