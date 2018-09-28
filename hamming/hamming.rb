class Hamming
  def self.compute(att1="", att2="")
    a = att1.split('')
    b = att2.split('')
    diff = (a + b) - (a & b)
    if att1== "" && att2 == ""
      return 0
    elsif att1.length != att2.length 
      raise ArgumentError.new("length not match")
    elsif att1 === att2
      return 0
    else
      return diff.length
    end
  end
end