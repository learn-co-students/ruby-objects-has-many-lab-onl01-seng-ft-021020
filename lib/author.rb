class Author
  
  attr_accessor :name 
  
  def initialize(name)
    @name =name 
  end
  
  def add_post(post_n)
    post_n.author = self 
  end
  
  def posts 
    Post.all
  end
  
  
  def add_post_by_title(title)
    post_n = Post.new(title)
    add_post(post_n)
  end
  
  def self.post_count
    posts = Post.all 
    count = 0 
    posts.each do |post_n|
      count += 1 
    end
    count
  end
  
end