class Song
    attr_accessor :name, :artist

    @@all = []
    def initialize(name)
        @name = name
        
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(file_name) 
        songs = file_name.split(" - ")   
        artist = Artist.new(songs[0])
        song = Song.new(songs[1])
        song.artist = artist
        song
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end

end  