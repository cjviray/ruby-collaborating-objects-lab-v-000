class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def self.all
    @@all 
  end 
  
  def self.find_or_create_by_name(artist_name)
    artist = @@all.find {|a| a.name == artist_name}  # the way that find works, says go through array #all and return all the objects that makes this statement true
  end 
  
  def add_song(song)
    @songs << song
    song.artist = self 
  end 
  
  def save
    @@all << self
  end 
  
  
end 