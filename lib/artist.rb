class Artist 
  
  attr_accessor :name, :song 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
    @songs = []
  end
  
  def add_song(name)
    # @songs << song 
    # song.name = self
    song 
  end
  
  def add_song_by_name(name)
    song = Song.new(song)
  end
  
  def songs
    Song.all.select{|s| s.artist == self}
  end
  
  def self.all 
    @@all 
  end 
  
  def add_song_by_name(song)
    song = Song.new(song)
  end
  
  
end