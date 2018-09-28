class Raindrops
  def self.convert(factor)
    result = ""
    if factor == 1
      result = "1"
    elsif factor % 3 != 0 && factor % 5 != 0 && factor % 7 != 0
      result = factor.to_s
    else
      if factor % 3 == 0 
        result += 'Pling' 
      end
      if factor % 5 == 0 
        result += 'Plang' 
      end
      if factor % 7 == 0 
        result += 'Plong' 
      end
    end
    result
  end
end
