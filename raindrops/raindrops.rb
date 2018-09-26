class Raindrops
  def self.convert(factor)
    if factor == 1
      return "1"
    elsif 
      factor % 3 != 0 && factor % 5 != 0 && factor % 7 != 0
      return factor.to_s
    elsif factor % 3 == 0 && factor % 5 == 0 && factor % 7 == 0
      return 'PlingPlangPlong'
    elsif factor % 3 == 0 && factor % 5 == 0
      return 'PlingPlang'
    elsif factor % 3 == 0 && factor % 7 == 0
      return 'PlingPlong'
    elsif factor % 5 == 0 && factor % 7 == 0
      return 'PlangPlong'
    # elsif factor % 3 == 0 && factor % 5 == 0 && factor % 7 == 0 
    #   return 'PlingPlangPlong'
    # when relocate elsif condition the test will throw error for 
    # ruby raindrops/raindrops_test.rb:86
    elsif
      arr_factor = (1..factor).select { |n|factor % n == 0}
      for i in arr_factor
        if i % 3 == 0
          return 'Pling'
        elsif i % 5 == 0
          return 'Plang'
        elsif i % 7 == 0
          return 'Plong'
        end
      end
    end
  end
end
