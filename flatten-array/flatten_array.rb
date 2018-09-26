class FlattenArray
  def self.flatten(array)
    flat_array = array.flatten
    flat_array.each do |elem|
      if elem == nil
        flat_array.delete(elem)
      end
    end
    flat_array
  end
end

