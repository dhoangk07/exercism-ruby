class TwoFer
  def self.two_fer(name= "")
    if name.nil? || name.empty?
      return "One for you, one for me." 
    else
      return "One for #{name}, one for me." 
    end
  end
end
