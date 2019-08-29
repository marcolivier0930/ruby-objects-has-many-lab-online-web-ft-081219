class Artist 
  
  attr_accessor :name , :song 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
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
    Song.all.select{|s| s.artist == self}
  end
end