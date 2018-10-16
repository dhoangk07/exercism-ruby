class Series
  def initialize(number)
    @number = number
  end

  def slices(value)
    raise ArgumentError if value > @number.length
    length_value = @number.length - value
    result = []
    for index in (0..length_value)
      result << @number.slice(index, value)
    end
    result
  end
end

