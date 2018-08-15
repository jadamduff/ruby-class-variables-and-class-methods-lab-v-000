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

  def self.artist_count
    artist_hash = {}
    @@artists.each_with_index do |index, val|
      artist_hash[val] = index
    end
  end

  def self.genre_count
    @@genre_count
  end
end
