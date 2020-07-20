class Song

attr_accessor :name, :artist_name
@@all =[]
# def initialize(name, artist_name)
#   @name = name
#   @artist_name = artist_name
#   @@all << self
#   save
# end

def self.all
  @@all
end
def save
  self.class.all << self
end

def self.create
  song = Song.new
  song.save
  song
end

def self.new_by_name
  song = Song.new(name)
end
end
