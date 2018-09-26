class Complement
  def self.of_dna(nucleotides)
    def change_one_element
      if nucleotides == ''
        return ''
      else
        split_elems = nucleotides.split('')
        arr = []
        split_elems.each do |elem|
          if elem == 'G'
            return 'C'
          elsif elem == 'C'
            return 'G'
          elsif elem == 'T'
            return 'A'
          else elem == 'A'
            return 'U'
          end
        end
      end
    end
  end
end
