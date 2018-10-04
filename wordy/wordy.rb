require 'byebug'
class WordProblem
  def initialize(string)
    @string = string
  end
  def answer
    result = []
    arrays = @string.gsub!('?', '').split(' ')
    arrays.each do |element|
            # debugger
      if element.scan(/^\-?[0-9]+$/).size == 1
        result << element
      elsif element == 'plus'
        result << element
      elsif element == "minus"
        result << element
      elsif element == "multiplied"
        result << element
      elsif element == "divided"
        result << element
      end
    end
    result
  end
end

puts WordProblem.new("What is 2 multiplied by -2 multiplied by 3?").answer


# class WordProblem
#   def initialize(string)
#     @string = string
#   end
#   def answer
#         # debugger
#     result = []
#     remove = @string.gsub!('?', '').gsub!('What is', '')
#     if remove.include?('plus')
#       result = remove.gsub!('plus', '+')
#     elsif remove.include?("minus")
#       result = remove.gsub!('minus', '-')
#     elsif remove.include?("multiplied by")
#       result = remove.gsub!('multiplied by', '*')
#     elsif remove.include?("divided by")
#       result = remove.gsub!('divided by', '/')
#     end
#     # puts remove
#     eval(result)
#   end
# end