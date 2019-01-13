class Song
  #attr_accessor :name, :artist, :genre
  attr_reader :name, :artist, :genre

  @@count = 0  # total amount of songs, ever.
  @@artists = []
  @@genres = [] # array of all shoveled in genres

  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each do |genre, count|
      @@genre_count[genre] ||= 0
      @@genre_count[genre] += 1
    end
    @@genre_count # <--- implicit return, I think that's what it's called.
  end

  def self.artist_count
    @@artists.each do |artist, count|
      @@artist_count[artist] ||= 0
      @@artist_count[artist] += 1
    end
    @@artist_count
  end

end # <---- method end
