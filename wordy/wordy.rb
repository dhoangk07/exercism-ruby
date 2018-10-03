require 'byebug'
class WordProblem
  def initialize(string)
    @string = string
  end
  def answer
        debugger
    result = []
    remove = @string.gsub!('?', '}').gsub!('What is', '#')
    if remove.include?('plus')
      result = remove.gsub!('plus', '+')
    elsif remove.include?("minus")
      result = remove.gsub!('minus', '-')
    elsif remove.include?("multiplied by")
      result = remove.gsub!('multiplied by', '*')
    elsif remove.include?("divided by")
      result = remove.gsub!('divided by', '/')
    end
    # puts remove
  end
end

puts WordProblem.new("What is 2 multiplied by -2 multiplied by 3?").answer
