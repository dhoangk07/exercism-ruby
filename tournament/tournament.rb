require "byebug"
class Tournament
  def self.tally(input)
    result = []
    output = "Team".ljust(30, " ") + '|'.rjust(2, ' ') + "MP".rjust(3, ' ') + '|'.rjust(2, ' ')+
                                   + "W".rjust(3, ' ') + '|'.rjust(2, ' ')+
                                   + "D".rjust(3, ' ') + '|'.rjust(2, ' ')+
                                   + "L".rjust(3, ' ') + '|'.rjust(2, ' ')+
                                   + "P".rjust(3, ' ') + "\n"  
   
    hash = {}
    if input == "\n"
      result = []
    else
      input.each_line do |line|
        result << line.split(";")
      end
    end
    result.each do |element|
      name_1 = element[0]
      hash[name_1] = [0,0,0,0,0] if hash[name_1].nil?
      name_2 = element[1]
      hash[name_2] = [0,0,0,0,0] if hash[name_2].nil?
      score = element[2]
      if score == "win\n"
        hash[name_1][0] += 1
        hash[name_1][1] += 1
        hash[name_1][4] += 3
        hash[name_2][0] += 1
        hash[name_2][3] += 1
        hash[name_2][4] += 0
      elsif score == "loss\n"
        hash[name_1][0] += 1
        hash[name_1][3] += 1
        hash[name_1][4] += 0
        hash[name_2][0] += 1
        hash[name_2][1] += 1
        hash[name_2][4] += 3
      elsif score == "draw\n"
        hash[name_1][0] += 1
        hash[name_1][2] += 1
        hash[name_1][4] += 1
        hash[name_2][0] += 1
        hash[name_2][2] += 1
        hash[name_2][4] += 1
      end
    end
    sort_hash = hash.to_a.sort do |x,y| 
      if x[1][4] < y[1][4]
        1
      elsif x[1][4] == y[1][4]
        if x[0] > y[0]
          1
        elsif x[0] < y[0]
          -1
        else
          0
        end
      else
        -1
      end
    end
    sort_hash.each do |key, value| 
      output += key.ljust(30, " ") + '|'.rjust(2, ' ') + value[0].to_s.rjust(3, ' ') + '|'.rjust(2, ' ')+
                                   + value[1].to_s.rjust(3, ' ') + '|'.rjust(2, ' ')+
                                   + value[2].to_s.rjust(3, ' ') + '|'.rjust(2, ' ')+
                                   + value[3].to_s.rjust(3, ' ') + '|'.rjust(2, ' ')+
                                   + value[4].to_s.rjust(3, ' ') +"\n"
    end
    output
  end
end
