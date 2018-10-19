require 'byebug'
class Allergies
  def initialize(number)
    @number = number
  end

  def list
    result = []
    split_number(@number).each { |element| result << find_item(element) if element != 0 }
    result.flatten.sort
  end

  def allergic_to?(value)
    return true if Allergies.new(@number).list.include?(value)
  end

  def find_item(number)
    allergie_items = { 'eggs'        => 1,
                       'peanuts'     => 2,
                       'shellfish'   => 4,
                       'strawberries'=> 8,
                       'tomatoes'    => 16,
                       'chocolate'   => 32,
                       'pollen'      => 64,
                       'cats'        => 128,
                     }
    result = []
    allergie_items.values.each do |element|
      result << allergie_items.keys[allergie_items.values.index(element)] if element == number 
    end
    result
  end

  def split_number(number)
    result = []
    binary_arrays = number.to_s(2).split("").reverse
    binary_arrays.each_with_index do |element, index|
      result << element.to_i * 2**index
    end
    result.reverse
  end
end
