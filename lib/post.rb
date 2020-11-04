#post instance hold reference to author it belongs to (setter/getter)
#class variable that holds all instances of posts
#class method that returns class variable

class Post
    attr_accessor :author, :title

    @@all = []

    def initialize(title)
        @title = title
        save
    end

    def save 
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        self.author.name if author 
    end

end