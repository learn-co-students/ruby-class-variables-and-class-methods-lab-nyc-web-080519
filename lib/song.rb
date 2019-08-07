require 'pry'

class Song
  attr_reader :name

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist  
    @@genres << genre
  end   # ends initialize method

  def name
    @name
  end  #ends name method

  def artist
    @artist
  end  #ends artist method

  def genre
    @genre
  end

  def self.count
    @@count
  end #ends self.count method

  def self.artists
    @@artists.uniq
  end  # ends self.artists method

  def self.genres
    @@genres.uniq
  end  # ends self.genres method

  def self.genre_count
    output = {}
    @@genres.each do |genrek|
      output[genrek] = @@genres.count(genrek)
    end  # ends genres.each loop
    output
  end  # ends genre_count method

  def self.artist_count
    output = {}
    @@artists.each do |artistsk|
      output[artistsk] = @@artists.count(artistsk)
    end  # ends genres.each loop
    output
  end  # ends genre_count method



end  #ends Song class
