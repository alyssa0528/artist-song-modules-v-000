require 'pry'

class Artist
  extend Memorable, Findable 
  include Paramable
  
  attr_accessor :name
  attr_reader :songs

  #class variable 
  @@artists = []
  
  #class method that looks for a particular artist in the @@artists array
  #def self.find_by_name(name)
   # @@artists.detect{|a| a.name == name}
  #end
  
  #creates new artist and adds that instance to @@artists array. each artist also has a @songs array
  def initialize
    @@artists << self
    @songs = []
  end
  
  #class method that accesses @@artists 
  def self.all
    @@artists
  end

  #instance method that takes a song and adds it to the artist's songs array. Associates that song's artist to the current Artist instance 
  def add_song(song)
    @songs << song
    song.artist = self
  end

  #instance method that iterates over @songs array ?
  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  #instance method that takes artist's name, makes it lowercase, and adds a "-" in any spaces
  #def to_param
   # name.downcase.gsub(' ', '-')
  #end

end
