class Song 
  
attr_accessor :name, :artist  ,:artist_name

@@all = []

def initialize(name)
  self.name = name
  @@all << self
end

def new_by_filename(filename)
  filenamevector = filename.split("-")
  songname = filenamevector[0]
  artistname = filenamevector[1]
  newsong = Song.new(songname)
  newartist = Artist.find_or_create_by_name(artistname)
  newsong.artist = newartist
end

def artist_name=(artistname)
  newartist = Artist.find_or_create_by_name(artistname)
  self.artist = newartist
end

end

