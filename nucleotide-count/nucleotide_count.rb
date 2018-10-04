require 'byebug'
class Nucleotide
  def initialize(strand)
    @strand = strand
  end

  def self.from_dna(strand)
    strand.each_char { |element| raise ArgumentError if !"ACTG".include?(element) }
    self.new(strand)
  end

  def count(value)
    @strand.count(value)
  end

  def histogram
    h1 = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0} 
    h1.merge!({'A' => @strand.count("A"),
               'G' => @strand.count("G"),
               'T' => @strand.count("T"),
               'C' => @strand.count("C")})
  end
end
