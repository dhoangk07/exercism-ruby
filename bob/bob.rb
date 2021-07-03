require 'byebug'
class Bob
  def self.ask?(sentence)
    return true if sentence.strip.split('')[-1] == '?'
  end
  def self.shouting?(sentence)
    return true if sentence == sentence.upcase && sentence.scan(/[A-Z]/).size > 0
  end
  def self.no_word?(sentence)
    return true if (sentence.scan(/\w+/) == [])
  end
  def self.hey(remark)
    result = 0
    if ask?(remark)
      if shouting?(remark)
        result = "Calm down, I know what I'm doing!"
      else
        result = "Sure."
      end
    elsif shouting?(remark)
      result = "Whoa, chill out!"
    elsif no_word?(remark)
      result = "Fine. Be that way!"
    else 
      result = "Whatever."
    end
    result
  end
end

# puts Bob.hey("I HATE THE DMV")
# puts Bob.hey("4?")

