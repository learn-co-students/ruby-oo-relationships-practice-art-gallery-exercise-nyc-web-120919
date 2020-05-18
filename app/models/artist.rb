class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def create_painting(gallery, title, price)
    Painting.new(self, gallery, title, price)
  end
  # to check create new artist then try
  # or a1.create_painting("gallery", "title", 24)

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map {|painting| painting.gallery.name}
  end

  def cities
    self.galleries.map {|gallery| gallery.city}
  end

  def total_paintings
    self.paintings.count 
  end

  def self.total_experience
    self.all.sum {|artist| artist.years_experience}
    # self.all.sum(&:years_experience)
    # can use (&:attribute) since it's an attribute for the class
  end

  def self.most_prolific
    self.all.max_by do |artist|
      artist.total_paintings / artist.years_experience
      # years_experience is an attribute for Artist class
      # painting / years_experience 
    end
  end

  def self.all
    @@all
  end

end
