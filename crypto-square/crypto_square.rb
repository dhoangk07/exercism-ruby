require 'byebug'
class Crypto
  def initialize(text)
    @text = text
  end

  def ciphertext
    pure_string = @text.downcase.scan(/\w+/).join
    return pure_string if pure_string.length == 1 
    return @text if @text == ''
    length = pure_string.length
    c = 8
    r = 8
    pure_string.split("").each_slice(8)
  end
end

puts Crypto.new('If man was meant to stay on the ground, god would have given us roots.').ciphertext
