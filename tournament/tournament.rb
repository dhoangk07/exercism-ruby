require "byebug"
class Tournament
  def self.tally(input)
    result = ''
    if input == ''
      # result =  "Team                           | MP |  W |  D |  L |  P\nTALLY" 
      puts <<GROCERY_LIST
      Grocery list
      ------------
      1. Salad mix.
      2. Strawberries.*
      3. Cereal.
      4. Milk.*

      * Organic
      GROCERY_LIST
    # else
    #   initial_arrays = input.split(";")
    end
    result
  end
end

puts Tournament.tally("")