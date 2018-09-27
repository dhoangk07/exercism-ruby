class FlattenArray
  def self.flatten(array)
    result = []
    if array.kind_of?(Array)
      array.each do |element|
        if element.kind_of?(Integer)
          result << element
        else
          result += flatten(element)
        end
      end
    end
    result
  end
end
