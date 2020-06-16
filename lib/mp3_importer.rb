class MP3Importer

attr_accessor :path
  
def initialize(path)
  self.path = path
end
  
def files
  

end

end

test_music_path = "./spec/fixtures/mp3s"
      music_importer = MP3Importer.new(test_music_path)
      
puts music_importer.path