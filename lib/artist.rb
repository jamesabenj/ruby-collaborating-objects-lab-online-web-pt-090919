require "pry"
class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def add_song(song)
    song.artist = self 
  end
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  
      
  def self.find_or_create_by_name(artist_name)
    if Artist.all.detect {|artist| artist.name == artist_name} == nil 
     Artist.new(artist_name)
    else 
      Artist.all.detect {|artist| artist.name == artist_name}
    end 
  end
  
  def print_songs
      songs.each do |song|
        puts song.name
      end 
    end 
      

  
end 