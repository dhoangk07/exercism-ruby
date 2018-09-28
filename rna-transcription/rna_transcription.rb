class Complement
  def self.change_one_word(word)
    if word == 'G'
      return 'C'
    elsif word == 'C'
      return 'G'
    elsif word == 'T'
      return 'A'
    else word == 'A'
      return 'U'
    end
  end

  def self.of_dna(nucleotides)
    result = []
    nucleotides.split('').each do |element|
      result << self.change_one_word(element)
    end
    result.join
  end
end

