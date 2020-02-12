require_relative 'artist'

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name, artist = nil)
    @name = name
    self.artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if !self.artist
      return nil
    else
      self.artist.name
    end
  end

end