#artist instance need method to return collection of all songs

class Artist
    attr_accessor :name
   

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select {|song| song.artist == self} 
    end

    def add_song(song)
        song.artist = self
    end
   
    def add_song_by_name(name)
        song = Song.new(name) #creates a new song with name argument
        song.artist = self #associates song and artist
    end

    def self.song_count #returns total # of songs associated to all artists
        Song.all.count
    end
end

