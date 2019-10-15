require "pry"
class Song 
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all  
  end 
  
  def artist_name=(artist_name)
     if new_artist = Artist.all.detect {|artist| artist.name == artist_name}
    
     else new_artist = Artist.new(artist_name)
      
       #binding.pry
     end 
     self.artist = new_artist
  end 

  
  def self.new_by_filename(filename)
    components = filename.split(" - ")
    song_name = components[1]
    song = Song.new(song_name)
    song.artist_name=(components[0])
    song
  end 
  
end 