
class Author
    attr_accessor :name

    def initialize (name)
        @name = name
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post) #takes argument of post, associates w/ author
        post.author = self
    end

    def add_post_by_title(title) #takes argument of title
        post = Post.new(title) #creates a new post 
        post.author = self #associates post and author
    end

    def self.post_count
        Post.all.count
    end


end