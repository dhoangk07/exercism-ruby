class Bob
    result = 0
  def ask_question?(sentence)
    if sentence.strip.split('')[-1] == '?' && !sentence.match(/\p{Upper}/) && sentence.strip.to_i.kind_of?(String)
      true 
    else 
      false
    end
  end

  def yell_statement?(sentence)
    if (!!"#{sentence}".match(/\p{Upper}/) == true && sentence.strip.to_i.kind_of?(String)) || sentence.strip.split('')[-1] == '!' 
     true 
    else 
      false
    end
  end

  # def self.hey(remark)
  #   result = 0
  #   if remark.strip.split('')[-1] == '?' && !is_upper?(remark)
  #     result = "Sure."
  #   end
  #   result
  # end 
end

# <!-- Bob answers 'Sure.' if you ask him a question. -->

# He answers 'Whoa, chill out!' if you yell at him.

# He answers 'Calm down, I know what I'm doing!' if you yell a question at him.

# He says 'Fine. Be that way!' if you address him without actually saying
# anything.