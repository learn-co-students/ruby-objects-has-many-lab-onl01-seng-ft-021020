class Post 
  @@all= []
  attr_accessor :title, :author
  
  def initialize (title)
    @@all << self
    @title = title
  end 
  
  def self.all 
    @@all 
  end 
  
  def author_name 
    if @author 
      self.author.name
    else 
      nil
    end
  end 
 
end 