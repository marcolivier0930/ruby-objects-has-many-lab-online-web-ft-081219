class Artist 
  
  attr_accessor :name , :song 
  
  @@song_count = 0
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def add_songs(song)
    @songs << song 
    song.name = self
    @@song_count += 1
  end
  def add_song_by_name(name)
    
  end
  def songs
    @songs
  end
end