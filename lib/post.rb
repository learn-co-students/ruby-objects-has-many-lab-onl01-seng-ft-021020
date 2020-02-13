require 'pry'

class Post
  attr_reader :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author=(author)
    @author = author
    @author.posts << self
  end

  def author_name
    self.author != nil ? self.author.name : nil
  end


end