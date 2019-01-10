class Artist

  attr_accessor :name
  attr_reader :song, :genre
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all = []
  end

  def save
    @@all << self
  end

  def self.create(name)
    artist = self.new(name)
    @@all << artist
    artist
  end

  def songs
    @songs
  end

  def genres
    genres = @songs.collect do |song|
        song.genre
      end
      genres.uniq
  end


  def add_song(song)
     if !song.artist
       song.artist = self
     end
     if !@songs.detect {|songs| songs.name == song.name }
       @songs << song
     end
   end


end
