require_relative 'song'

class Artist
  attr_accessor :name

  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.name = name
    new_song.artist = self
  end

  def self.song_count
    total = 0
    @@all.each do |artist|
      total += artist.songs.count
    end
    total
  end

end