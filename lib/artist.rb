class Artist

  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end
 def songs 
   ary = []
   Song.all.each do |song|
     ary << song
 end
 ary
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

  def self.song_count
    Song.all.count
 #  num = 0
#   Song.all.each do |song|
 #    num += 1
 #end
# num
  end

end