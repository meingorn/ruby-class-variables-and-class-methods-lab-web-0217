class Song

  @@genres = []
  @@artists = []
  @@count = 0

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
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
    genre_hash = {}
    @@genres.each do |artist|
      if genre_hash[artist] == nil
        genre_hash[artist] = 1
      else
        genre_hash[artist] += 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      if artist_hash[artist] == nil
        artist_hash[artist] = 1
      else
        artist_hash[artist] += 1
      end
    end
    artist_hash
  end
end
