require 'byebug'
class Nucleotide
   attr_reader :acids

  def initialize(acids)
    @acids = acids
  end   

  def self.from_dna(strand)
    acids = strand.chars
  end

  def histogram
        # debugger
    aa = []
    tt = []
    cc = []
    gg = []
    array_strings = string.split("")
    array_strings.each do |element|
      if element == 'A'
        aa << element
      elsif element == 'T'
        tt << element
      elsif element == 'C'
        cc << element
      elsif element == "G"
        gg << element 
      end
    end
      hash = {"A": aa.count, "T": tt.count, "C": cc.count, "G": gg.count}
  end
end

# puts Nucleotide.from_dna('GGGGGTAACCCGG')
puts Nucleotide.from_dna('GGGGGGGG').histogram
# 'AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC'