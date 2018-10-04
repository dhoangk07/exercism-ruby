require 'byebug'

phrase = 'The Ruby is really awesome language!'

substr_end = "age!"

substr_begin = 'The'

def cutome_start_with?(string, substr)
  string[0,substr.length] == substr
end

def custome_end_with?(string, substr)
  string[-substr.length..-1] == substr
end

# puts phrase.start_with?('The')

# puts phrase.end_with?('language!')

# puts cutome_start_with?(phrase, substr_begin)
puts custome_end_with?(phrase, substr_end)