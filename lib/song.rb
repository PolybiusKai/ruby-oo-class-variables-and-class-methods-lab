class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
  
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
        @@genres.each_with_object({}) {|k, hash|  hash[k] = @@genres.count(k)}
    end

    def self.artist_count
        @@artists.each_with_object({}) {|k, hash|  hash[k] = @@artists.count(k)}
    end

    def initialize(name, artist, genre)
      @@count += 1
      @@artists << artist
      @@genres << genre
      self.name = name
      self.artist = artist
      self.genre = genre
    end
  
  end
  