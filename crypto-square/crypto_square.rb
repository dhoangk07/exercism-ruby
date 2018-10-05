require 'byebug'
class Crypto
  def initialize(text)
    @text = text
  end

  def slice_array(array)
    element2splice = _factor(@pure_string.length)
    new_arrays = array.each_slice(element2splice).to_a
    if new_arrays[0].length != new_arrays[-1].length
      diff = new_arrays[0].length - new_arrays[-1].length
      diff.times do |n|
        new_arrays[-1] << " "
      end 
    end
    new_arrays
  end

  def ciphertext
    @pure_string = @text.downcase.scan(/\w+/).join
    if @pure_string.length == 1 
      return @pure_string 
    elsif @text == ''
      return @text
    else
      string_arrays = @pure_string.split("")
        result = []
      slice_array(string_arrays).transpose.each do |element|
        result << element.join
      end
    result.join(" ")
    end
  end

  def _factor(number)
    for ie in 1..10000
      return ie if ie*(ie) >= number
      return ie+1 if ie*(ie+1) >number
    end
  end
end
