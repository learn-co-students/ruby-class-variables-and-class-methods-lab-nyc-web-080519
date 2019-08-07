class Song
    attr_accessor :name, :artist, :genre

    def initialize(the_name, the_artist, the_genre)
        @name = the_name
        @artist = the_artist
        @genre = the_genre
        @@count += 1
        @@genres << the_genre
        @@artists << the_artist

        if @@genre_count[the_genre]
            @@genre_count[the_genre] += 1
        else
            @@genre_count[the_genre] = 1
        end

        if @@artist_count[the_artist]
            @@artist_count[the_artist] += 1
        else
            @@artist_count[the_artist] = 1
        end
    end

    @@count = 0
    def self.count
        @@count
    end

    @@genres = []
    def self.genres
        @@genres.uniq
    end

    @@artists= []
    def self.artists
        @@artists.uniq
    end

    @@genre_count = Hash.new
    def self.genre_count
        @@genre_count
    end

    @@artist_count = Hash.new
    def self.artist_count
        @@artist_count
    end
end