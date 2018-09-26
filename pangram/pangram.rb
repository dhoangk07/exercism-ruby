class Pangram
  def self.string_without_space(sentence)
    sentence.tr('^A-Za-z0-9','').tr("0-9", "").downcase
  end
  def self.pangram?(sentence= "")
    if sentence.nil? || sentence.empty?
      return false
    elsif 
      a = self.string_without_space(sentence).split('').uniq.sort
      b = ('a'..'z').to_a
      if a.uniq.sort == b 
        return true
      else
        return false
      end
    end
  end
end
