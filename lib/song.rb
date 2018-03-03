require 'pry'

class Song
  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable
  
  attr_accessor :name
  attr_reader :artist

  #class variable
  @@songs = []

  #create new Song instances. store each Song instance into @@songs array 
  #def initialize
   # @@songs << self
  #end

  #artist writer method 
  def artist=(artist)
    @artist = artist
  end

  #class method that accesses @@songs
  def self.all
    @@songs
  end
end
