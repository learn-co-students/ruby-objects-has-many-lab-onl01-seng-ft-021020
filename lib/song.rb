class Song
  
  attr_accessor :name, :artist, :artist_name
  
  @@all = []
  def initialize(name)
    @@all << self
    @name = name
    
  end
  
  def self.all
    @@all
  end
  
  def artist
    @artist
  end
  
  def artist=(new_artist)
    @artist = new_artist
    @artist_name = @artist.name
  end
  
  def artist_name
    @artist_name
  end
end
