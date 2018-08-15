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
    @@artists << @artist if !@@artists.contains?(self.artist)
    @@genres << self.genre if !@@artists.contains?(self.genre)
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

  def self.artist_count
    artist_hash = {}
    @@artists.each_with_index do |val, index|
      artist_hash[val] = @@artists.select {|i| i == val}.count
    end
    artist_hash
  end

  def self.genre_count
    @@genre_count
  end
end
