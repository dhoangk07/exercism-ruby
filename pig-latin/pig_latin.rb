require 'byebug'
class PigLatin
  def self.translate(string)
    result = []
    string.split(' ').each { |element|  result << perform(element) }
    result.join(" ")
  end

  def self.perform(string)
    result = ''
    if rule_1(string)
      result = string + 'ay'
    elsif rule_2(string)
      if string.scan(/\Arh|\Asch|\Athr|\Ath|\Ach|\Aqu|\Asqu/).size == 1 
        split = string.scan(/\Arh|\Asch|\Athr|\Ath|\Ach|\Aqu|\Asqu/)
      elsif string.scan(/\A[^aeiou]/).size == 1
        split = string.scan(/\A[^aeiou]/)
      end
      string.slice!(split.first)
      result = string + split.first + 'ay'
    elsif rule_3(string)
      split = string.slice!(0,3)
      result = string + split + 'ay'
    elsif rule_4(string)
      split = string.scan(/\Arh|\Asch|\Athr|\Ath|\Ach|\Aqu|\Asqu/)
      string.slice!(split.first)
      result = string + split.first + 'ay'
    else
      result = string.reverse + 'ay'
    end
    result
  end

  # - **Rule 1**: If a word begins with a vowel sound, add an "ay" sound to the end of the word. Please note that "xr" and "yt" at the beginning of a word make vowel sounds (e.g. "xray" -> "xrayay", "yttria" -> "yttriaay").

  def self.rule_1(string)
    return true if string.scan(/\Axr|\Ayt|\Aa|\Ao|\Ae|\Ai|\Au/).size == 1 
  end

  # - **Rule 2**: If a word begins with a consonant sound, move it to the end of the word and then add an "ay" sound to the end of the word. Consonant sounds can be made up of multiple consonants, a.k.a. a consonant cluster (e.g. "chair" -> "airchay").

  def self.rule_2(string)
    return true if string.scan(/\A[^aeiou]/).size == 1 || consonant_cluster(string)
  end

  # - **Rule 3**: If a word starts with a consonant sound followed by "qu", move it to the end of the word, and then add an "ay" sound to the end of the word (e.g. "square" -> "aresquay").

  def self.rule_3(string)
    if rule_2(string) 
      string.slice!(0)
      return true if string.scan(/\Aqu/).size == 1
    end
  end

  # - **Rule 4**: If a word contains a "y" after a consonant cluster or as the second letter in a two letter word it makes a vowel sound (e.g. "rhythm" -> "ythmrhay", "my" -> "ymay").

  def self.rule_4(string)
    if consonant_cluster(string) 
      slice = string.scan(/\A[rh|sch|thr|th|ch|qu|squ]/)
      string.slice!(slice)
      return true if string.scan(/\Ay/) == 1
    end
  end

  def self.consonant_cluster(string)
    return true if string.scan(/\A[rh|sch|thr|th|ch|qu|squ]/).size == 1
  end
end
/\A[rh|sch|thr|th|ch|qu|squ]/
