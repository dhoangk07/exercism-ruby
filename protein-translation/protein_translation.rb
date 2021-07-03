require 'byebug'
class InvalidCodonError < StandardError; end
class Translation
  HASH = {
    "AUG"                => "Methionine",
    "UUU, UUC"           => "Phenylalanine",
    "UUA, UUG"           => "Leucine",
    "UCU, UCC, UCA, UCG" => "Serine",
    "UAU, UAC"           => "Tyrosine",
    "UGU, UGC"           => "Cysteine",
    "UGG"                => "Tryptophan",
    "UAA, UAG, UGA"      => "STOP"
  }
  def self.of_rna(protein)
    initial_arrays = protein.split("")
    initial_arrays.each { |element| fail InvalidCodonError if "ATGU".include?(element) == false }
    result = []
    final_result = []
    initial_arrays.each_slice(3){ |element| result << element.join }
    result.each do |element| 
      if of_codon(element) != 'STOP'
        final_result << of_codon(element) 
      else of_codon(element) == 'STOP'
        return final_result
      end
    end
    final_result.each {|item| item.to_s }
  end

  def self.of_codon(input)
    HASH.keys.each do |element|
      find_index = HASH.keys.index(element)
      return HASH["#{HASH.keys[find_index]}"] if element.include?(input) == true
    end
  end
end
