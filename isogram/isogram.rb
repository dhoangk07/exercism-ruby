require 'byebug'
class Isogram
  def self.isogram?(input='')
        debugger
    initial_arrays = input.scan(/\w+/).join.split("")
    arrays = input.scan(/[a-z]/).join.split("")
    return true if input == ""
    return false if arrays.uniq.length != initial_arrays.length
    return true if arrays.uniq.length == initial_arrays.length

  end
end 

puts Isogram.isogram?("Emily Jung Schwartzkopf")