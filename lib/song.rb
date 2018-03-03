require 'pry'

class Song
  extend Memorable, Findable
  include Paramable
  
  attr_accessor :name
  attr_reader :artist

  #class variable
  @@songs = []

  #create new Song instances. store each Song instance into @@songs array 
  def initialize
    @@songs << self
  end

  #artist writer method 
  def artist=(artist)
    @artist = artist
  end

  #instance method that takes a song's name, makes it lowercase, and adds a "-" in spaces
  #def to_param
   # name.downcase.gsub(' ', '-')
  #end

  #class method that accesses @@songs
  def self.all
    @@songs
  end
end
