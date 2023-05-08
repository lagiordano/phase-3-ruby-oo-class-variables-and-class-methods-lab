class Song 
    attr_accessor :name, :artist, :genre 

    @@count = 0

    @@genres = []

    @@artists = []

    def initialize name, artist, genre 
        @name = name 
        @artist = artist 
        @genre = genre 
        @@count += 1 
        @@genres << genre 
        @@artists << artist 
    end

    def self.count 
        @@count 
    end

    def self.genres
        @@genres.uniq 
    end

    def self.artists 
        @@artists.uniq 
    end



end

puts Song.count 

song1 = Song.new "blue", "hey", "rap"
song2 = Song.new "yay", "moo", "classical"
song3 = Song.new "doo", "great", "pop"
song4 = Song.new "heya", "there", "pop"
song5 = Song.new "heya", "world", "jazz"

puts Song.count 

puts Song.genres
puts Song.artists