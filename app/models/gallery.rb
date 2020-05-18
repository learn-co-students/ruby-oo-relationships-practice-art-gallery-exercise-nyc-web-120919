class Gallery

  attr_reader :name, :city
  @@all = []
  
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def painting_info
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    self.painting_info.map {|painting| painting.artist}
  end

  def paintings
    self.painting_info.map {|painting| painting.title}
  end

  def artist_names
    self.artists.map {|artist| artist.name}
  end

  def most_expensive_painting
    self.painting_info.max {|painting| painting.price}
  end

  def self.all
    @@all
  end

end
