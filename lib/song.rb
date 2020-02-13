require 'pry'

class Song

  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(artist_object)
    @artist = artist_object
    @artist.songs << self
  end

  def artist_name
    self.artist != nil ? self.artist.name : nil
  end


end