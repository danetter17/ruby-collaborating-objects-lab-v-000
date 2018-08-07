require "pry"
class MP3Importer
  
  #attr_accessor :files
  def initialize(test_music_path)
    @test_music_path = test_music_path
    test_music_path
  end 
  
  def files
    #where the path goes perhaps?
    @files = Dir.glob("#{@test_music_path}/*.mp3")
  end

  def import(filenames)
    filenames.each{|filename| Song.new_by_filename(filename)}
  end
  
end
