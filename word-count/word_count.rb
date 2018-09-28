class Phrase
  attr_accessor :words
  def initialize(words)
    @words = words
  end

  def word_count
    word_list = Hash.new(0)
    arrays = words.downcase.scan(/(\w+('\w+)?)/)
    arr_split = []
    arrays.each do |element|
      word_list[element[0]]+= 1
    end
    word_list
  end 
end

