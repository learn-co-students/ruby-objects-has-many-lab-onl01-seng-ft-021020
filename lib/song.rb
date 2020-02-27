class Song 
  attr_accessor :name, :artist 

  @@all = []
  @@song_count = 0


  def initialize(name, artist=nil)
    @name = name
    @artist = artist
    @songs = []
    @@all << self
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.all
    @@song_count
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
  
  def songs
    @songs
  end

  def self.all
    @@all
  end
end
