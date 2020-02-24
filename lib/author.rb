require 'pry'

class Author
  attr_accessor :name, :posts
  
  def initialize(name =nil)
    @name = name 
    @posts = []
  end
  
   def add_post(post)

    post.author = self
  end
  
  def posts 
    Post.all.select {|post| post.author == self}
  end
  
 def add_post_by_title(name)
    post = Post.new(name)
    add_post(post)
  
end

  def self.post_count 
    Post.all.length
  end

end
  
  #   def songs
  #   Song.all.select {|song| song.artist == self}
  # # # binding.pry
  # end 
  #   def add_song_by_name(name, genre)
  #   song = Song.new(name, genre)
  #   add_song(song)
  # end
