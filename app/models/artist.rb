class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end 

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end 
  end 

  def galleries
    artist_galleries = []
    paintings.each do |painting|
      artist_galleries << painting.gallery 
    end 
    artist_galleries.uniq 
  end

  def cities
    artist_cities = []
    galleries.each do |gallery|
      artist_cities << gallery.city 
    end 
    artist_cities.uniq
  end 

  def self.total_experience
    running_total = 0
    self.all.each do |artist|
      running_total += artist.years_experience
    end 
    running_total
  end

  def self.most_prolific
    self.all.max_by {|artist| artist.paintings.length / artist.years_experience}
  end 

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end 
  
end
