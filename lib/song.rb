require "pry"
class Song
  
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    name = filename.split(" - ")[1]
    song = self.new(name)
    artist_name = filename.split(" - ")[0]
    artist = Artist.new(artist_name)
    Artist.all << artist
    #binding.pry
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
end