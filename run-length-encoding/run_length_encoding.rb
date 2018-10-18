require 'byebug'
class RunLengthEncoding
  def self.encode(input)
    arrays = input.split("")
    length = arrays.length
    result = {}
    count = 1
    key_arrays = []
    value_arrays = []
    semi_final = []
    final = []
    for index in 0..length
      stop_for_loop = (arrays[index+1] != nil) && arrays[index] === arrays[index+1]
      if stop_for_loop
        count += 1
      else
        result[[count, index]] = arrays[index]
        count = 1
        count += 1 if stop_for_loop
      end
    end
    delete_nil = result.delete_if {|k,v| v.nil?}
    delete_nil.keys.each do |element|
      key_arrays << element[0]
    end
    value_arrays << delete_nil.values
    semi_final << key_arrays
    semi_final << value_arrays.flatten
    semi_final.transpose.each do |element|
      final << combine_element(element)
    end
    final.join
  end

  def self.combine_element(array)
    result = ''
      array.each do |element|
        if element == 1 
          result += ''
        else
          result += element.to_s
        end
      end
    result
  end

  def self.decode(input)
    arrays = input.scan(/\d+|\D+/)
    result = []
      arrays.each do |element|
        if _word?(element)
          result << element.split("")
        elsif _integer?(element)
          result << element
        end
      end
    flatten_arrays = result.flatten
    flatten_arrays.unshift("1") if _word?(flatten_arrays[0])
    length = flatten_arrays.length
    semi_final_decode = []
    for index in 0..length
          debugger
      if (flatten_arrays[index] != nil?) && _integer?(flatten_arrays[index])
        semi_final_decode << flatten_arrays[index] + flatten_arrays[index+1]
      elsif (flatten_arrays[index+1] != nil?) && _word?(flatten_arrays[index+1])
        semi_final_decode << flatten_arrays[index+1]
      end
    end
    final_decode = []
    semi_final_decode.each do |element|
      final_decode << print_inline(element)
    end
        # debugger
    final_decode.join
  end

  def self._word?(input)
    return false if input.nil?
    input.split("").all? do |element| 
      switch = element.downcase.ord
      'a'.ord<= switch && switch <= 'z'.ord
    end
  end

  def self._integer?(input)
    return false if input.nil?
    input.split("").all? do |element| 
      switch = element.ord
      '0'.ord <= switch && switch <= '9'.ord
    end
  end

  def self.print_inline(string)
    arrays = string.scan(/\d+|\D+/)
    if arrays.length == 1
       arrays[0]
    else
       arrays[1]*arrays[0].to_i
    end
  end
  
end

puts RunLengthEncoding.decode('2 hs2q q2w2 ')
# puts RunLengthEncoding.decode('12WB12W3B24WB')

# puts RunLengthEncoding._word?('2x')










