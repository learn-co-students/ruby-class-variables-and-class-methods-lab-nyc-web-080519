class Song
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@artist = []
  @@genre = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end 
  
  def self.count
    @@count
  end 
  
  def self.genres 
    @@genres
  end 
  
  def self.artists
    @@artists
  end 
  
  def self.song_count
    self.Song_count
end 