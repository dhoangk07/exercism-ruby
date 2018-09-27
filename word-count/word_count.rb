class Phrase
  attr_accessor :words
  def initialize(words)
    @words = words
  end

  def word_count
    word_list = Hash.new(0)
    # arrays = words.tr('\x00-\x7F','').split(" ")
    words.downcase.scan(/\w+/).each do |word|
      word_list[word] += 1
    end
    word_list
  end 
end
