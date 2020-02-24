class Post
  
  attr_accessor :title, :author, :author_name
  
  @@all = []
  def initialize(title)
    @@all << self
    @title = title
    
  end
  
  def self.all
    @@all
  end
  
  def author
    @author
  end
  
  def author=(new_author)
    @author = new_author
    @author_name = @author.name
  end
  
  def author_name
    @author_name
  end
end
