require 'byebug'
class Queens
  def initialize(white: [x,y], black:0)
    @white = white
    @black = black
    raise ArgumentError if white[0] < 0 || white[1] < 0 || white[0] >= 8 || white[1] >= 8
  end

  def attack?
    same_row_or_column?(@white, @black) || same_diagonal?(@white, @black)
  end

  def same_row_or_column?(arr1, arr2)
    return true if arr1[1] == arr2[1] || arr1[0] == arr2[0]
  end

  def same_diagonal?(arr1, arr2)
    return true if arr1.sum == arr2.sum || ( arr1[0] == arr1[1] && arr2[0] == arr2[1] )
  end
end
