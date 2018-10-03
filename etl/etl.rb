require 'byebug'
class ETL
  def self.transform(old)
    new_hash = old.invert
    result = {}
    new_hash.keys.each do |element|
      element.each do |item|
        a = {item.downcase => new_hash[element]}
        result.merge!a
      end  
      result  
    end 
    result
  end
end
