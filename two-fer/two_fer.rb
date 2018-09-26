class TwoFer
  def self.two_fer(aa= "")
    return "One for you, one for me." if aa.nil? || aa.empty?
    return "One for #{aa}, one for me." 
  end
end
