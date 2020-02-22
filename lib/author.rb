class Author
    attr_accessor :name, :posts
   
    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select { |post| post.author == self }
    end

    def add_post(post_obj)
        post_obj.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        add_post(post)
    end

    def self.post_count
        Post.all.select{|post| post.author_name}.length
    end
end