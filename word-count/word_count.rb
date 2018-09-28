class Phrase
  attr_accessor :words
  def initialize(words)
    @words = words
  end

  def word_count
    word_list = Hash.new(0)
    # arrays = words.tr('\x00-\x7F','').split(" ")
    # words.downcase.scan(/\w+('\w+)?/).each do |word|
    arrays = words.downcase.scan(/(\w+('\w+)?)/)
    arr_split = []
    arrays.each do |element|
      arr_split << element[0]
    end
    arr_split.each do |res_element|
      word_list[res_element] += 1
    end
    word_list
  end 
end
