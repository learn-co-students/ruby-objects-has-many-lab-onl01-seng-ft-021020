class Post
  attr_accessor :title, :author

  @@all = []
  @@post_count = 0

  def initialize(title, author=nil)
    @title = title
    @author = author
    @posts = []
    @@all << self
  end
  
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_name(name)
    post = Post.new(name)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def author_name
    if @author == nil
      return nil
    else
      @author.name
    end
  end
  
  def Post.all
    @@all
  end

  
end