class Song
    attr_reader :name, :artist, :genre
    attr_accessor :count, :artists, :genres
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
    end

    def self.count
        @@count
    end 

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        h = Hash.new(0)
        @@genres.each {|g| h[g]+=1}
        h
    end

    def self.artist_count
        h = Hash.new(0)
        @@artists.each {|g| h[g]+=1}
        h
    end


end