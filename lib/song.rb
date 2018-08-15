class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist if !@@artists.include?(self.artist)
    @@genres << self.genre if !@@genres.include?(self.genre)
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

  def artist_count
    @@artists.count
  end

  def genre_count
    @@genre_count
  end
end
