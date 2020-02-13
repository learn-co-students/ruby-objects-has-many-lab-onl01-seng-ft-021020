class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    Song.new(name).artist = self
  end

  def self.song_count
    Song.all.length
  end

end