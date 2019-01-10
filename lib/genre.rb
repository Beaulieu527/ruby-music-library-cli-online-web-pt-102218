class Genre

  attr_accessor :name
  attr_reader :song, :artist
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
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
    genre = self.new(name)
    @@all << genre
    genre
  end

  def songs
    @songs
  end
  

end
