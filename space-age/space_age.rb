require 'byebug'
class SpaceAge
  def initialize(seconds)
    @seconds = seconds 
  end
  EARTH_DAY = 31557600.to_f
  DELTA = 0.01
  PLANET = { mercury: 0.2408467*EARTH_DAY,
             venus: 0.61519726*EARTH_DAY,
             earth: EARTH_DAY,
             mars: 1.8808158*EARTH_DAY,
             jupiter: 11.862615*EARTH_DAY,
             saturn: 29.447498*EARTH_DAY,
             uranus: 84.016846*EARTH_DAY,
             neptune: 164.79132*EARTH_DAY
            }
    PLANET.each do |planet, orbital_period|
    define_method("on_#{planet}") do
      divide = @seconds / orbital_period
      result = divide.round(2)
      return result if (divide-result).abs <= DELTA
    end
  end
end
