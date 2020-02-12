require_relative 'post'

class Author
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.title = title
    new_post.author = self
  end
  
  def self.post_count
    total = 0
    @@all.each do |author|
      total += author.posts.count
    end
    total
  end
  
end