#song instance will need to reference artist (attr_accessor :artist)
#class variable that holds all instances of every song in array
#class method that returns the class variable holding all songs
#Song class needs to know about all song instances
#song instance needs to know about its artist
#create a class variable that keeps track of all song/post instances
#class method return total number of songs

class Song
    attr_accessor :artist, :name

    @@all = []
    
    def initialize(name)
        @name = name
        save
    end
    
    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        self.artist.name if artist
    end

end