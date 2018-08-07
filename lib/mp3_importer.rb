require "pry"
class MP3Importer
  
  attr_accessor :files
  def initialize(path)
    @path = path
  end 
  
  def files
    #where the path goes perhaps?
    @files = Dir.glob("#{path}/*.mp3")
  end

  def import(filenames)
    filenames.each{|filename| Song.new_by_filename(filename)}
  end
  
end
