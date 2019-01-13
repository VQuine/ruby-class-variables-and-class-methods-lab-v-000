class Song
  attr_accessor :name, :artist, :genre

  @@count = 0  # total amount of songs, ever.
  @@artists = []
  @@genres = [] # array of all shoveled in genres

  @@genre_count = {}

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
    @@genres.collect do |genre, count|
      @@genre_count[genre] ||= 0
      @@genre_count[genre] += 1
    end
    return @@genre_count
  end



end # <---- method end
