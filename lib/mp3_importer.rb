class MP3Importer
  attr_accessor :path, :files
  
  
  def initialize(path)
    @path = path
  end 
  
  
  def files
    @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
  end 
  
  
  def import
    self.files.each{|filename| Song.new_by_filename(filename)}
  end
  
end 