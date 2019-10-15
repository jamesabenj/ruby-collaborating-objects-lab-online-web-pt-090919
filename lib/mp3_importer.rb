class MP3Importer
  
  attr_reader :path 
  
def initialize(path)
  @path = path
end 

def files
  Dir["#{path}/*.mp3"].map do |songs|
    songs.split("/").last
  end 


    
end 

end 