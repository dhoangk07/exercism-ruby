require 'byebug'
class TwelveDays
  def self.song
    open("twelve-days/song.txt", &:read)
  end
end

