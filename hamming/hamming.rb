class Hamming
  def self.compute(att1 = "", att2 = "")
    raise ArgumentError if att1.length != att2.length 
    if att1 == "" && att2 == "" || att1 === att2
      return  0
    else
      result = att1.split('').select.each_with_index { |item, index| att2.split('')[index] != item }
    end
    result.count
  end
end

