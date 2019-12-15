require 'pry'

class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end 


  def all_paintings
    #returns all painting instances for the gallery (which includes extra info)
    Painting.all.select do |painting|
      painting.gallery == self
    end  
  end 

  def paintings
    all_paintings.map do |painting|
      "This painting is called '#{painting.title}', it was painted by #{painting.artist.name}, and it is worth $#{painting.price}."
    end 
  end 

  def artists
    the_artists = []
    Painting.all.each do |painting|
      if painting.gallery == self && !the_artists.include?(painting.artist)
        the_artists << painting.artist
      end 
    end 
    the_artists
  end 

  def artist_names
    artists.map do |artist|
      artist.name
    end
  end 

  def most_expensive_painting
    expensive_painting = self.all_paintings.max_by do |painting|
      painting.price
    end 
    expensive_painting
  end 

end
