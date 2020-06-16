
class Artist 
  
attr_accessor :name, :song
  
@@all = []


  def initialize(name)
    self.name = name
    @@all << self
    @allsongs = []
  end
  
  def self.all
    @@all
  end
  
  def add_song(songname)
    @allsongs << songname
  end
  
  def songs 
    @allsongs
  end
  
  def self.find_or_create_by_name(artistname) 
    retvalue = "hello"
    retvalue = @@all.find { |artist| artist.name == artistname }
     
      if retvalue == nil then
        retvalue = Artist.new(artistname)
      else
        retvalue
      end
      puts retvalue
      retvalue
  end
    
  def print_songs
    self.songs.each do |songname| 
      puts songname.name
    end
  end
  
  end
  
      
      
      
      
    