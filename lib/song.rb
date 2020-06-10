require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
  song = Song.new
  song.save
  song
  end 
  
  def self.new_by_name(name)
    song = Song.new 
    song.name = name
    song
  end  

  def self.create_by_name(name)
    song = Song.new
    song.name = name
    song.save
    song
  end 
  
  def self.find_by_name(name)
    self.all.find{|s| s.name == name}
  end
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name) != nil
      self.find_by_name(name)
    else 
      self.create_by_name(name)
    end
  end 
  
  def self.alphabetical
    self.all.sort_by{|obj| obj.name}
  end
      
  def self.new_from_filename(filename)
    binding.pry
    filename.split(/.\/-\)
  end
    

  

end
