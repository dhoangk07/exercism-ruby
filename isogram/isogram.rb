require 'byebug'
class Isogram
  def self.isogram?(input='')
        # debugger
    input = input.downcase.scan(/[a-z]/).join.split("")
    input.length == input.uniq.length
    # initial_arrays = input.scan(/\w+/).join.split("")
    # arrays = input.downcase.scan(/[a-z]/).join.split("")
    # return true if input == ""
    # return false if arrays.uniq.length != initial_arrays.length
    # return true if arrays.uniq.length == initial_arrays.length

  end
end 

puts Isogram.isogram?("Emily Jung Schwartzkopf")