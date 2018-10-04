require 'byebug'
class CollatzConjecture
  def self.steps(number)
    raise ArgumentError if number < 1
    steps = 0
    until number == 1
      steps += 1
      if number.even?
        number /= 2
      else
        number = 3*number + 1
      end
    end
    steps
  end
end
