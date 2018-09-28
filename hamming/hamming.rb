class Hamming
  def self.compute(att1 = "", att2 = "")
    arrs = att1.split('')
    brrs = att2.split('')
    result = 0
    if att1 == "" && att2 == ""
    result = 0
    elsif att1.length != att2.length 
      raise ArgumentError.new("length not match")
    elsif att1 === att2
      result = 0
    else
      arrs.each do |element|
        for i in brrs do
          if element != i
            result += 1
          end
        end
      end
    end
    result
  end
end
