require "byebug"
class Scrabble
  def initialize(string)
    @string = string
  end

  def self.score(term)
    new(term).score
  end

  def _value(value)
    letter = {"A, E, I, O, U, L, N, R, S, T": 1, "D, G": 2, "B, C, M, P": 3, "F, H, V, W, Y": 4, "K": 5, "J, X": 8, "Q, Z": 10}
    letter.keys.each do |element|
      pure_elements = element.to_s.delete(", ").split("")
      pure_elements.each { |item| return letter[letter.keys[letter.keys.index(element)]] if item.include?(value) == true }
    end
  end

  def score
    result = []
    return 0 if @string == nil || @string.scan(/[a-zA-Z]/) == []
    initial_arrays = @string.upcase.split("")
    initial_arrays.each { |element| result << _value(element)}
    result.sum
  end
end
