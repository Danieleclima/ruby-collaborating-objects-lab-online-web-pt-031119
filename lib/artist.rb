class Artist
  
  attr_accessor :name, :songs
  
@@all = []

def initialize (name)
  @name = name
  @songs = []
end

def add_song (song)
  @songs << song
end

def save
  @@all << self
end

def self.all
  @@all
end

def self.find_or_create_by_name (name)

  self.all.collect do |singer|
    if singer.name == name
       return singer
    else
      return self.new(name)
  self.all.each do |singer|
    if singer.name == name
      singer
    else
      self.new(name)
    end
  end
end
end
end

def print_songs
  @songs.each do |song|
    puts song.name 
  end
end
end
