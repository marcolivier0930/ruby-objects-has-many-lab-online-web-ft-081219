class Artist 
  
  attr_accessor :name, :song 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
    @songs = []
  end
  
  def add_song(song)
    # @songs << song 
     song.artist = self
  end
  
  
  def songs
    Song.all.select{|s| s.artist == self}
  end
  
  def self.all 
    @@all 
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
  
  def self.song_count
    @@all.size  
  end
end