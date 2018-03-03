require 'pry'

class Artist
  extend Memorable::ClassMethods, Findable 
  include Memorable::InstanceMethods, Paramable
  
  attr_accessor :name
  attr_reader :songs

  #class variable 
  @@artists = []
  
  #creates new artist and adds that instance to @@artists array. each artist also has a @songs array
  def initialize
   # @@artists << self
    super
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


end
