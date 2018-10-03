require 'byebug'
class Acronym
  def self.abbreviate(name)
    array = name.scan(/\w+/)
    result = []
    array.each do |element|
      result << element[0]
    end
    result.join.upcase
  end
end
