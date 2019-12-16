class Painting

  attr_reader :artist, :gallery, :title, :price
  @@all = []

  def initialize(artist, gallery, title, price)
    @artist = artist
    @gallery = gallery
    @title = title
    @price = price
    @@all << self
  end

  def self.total_price
    self.all.sum {|painting| painting.price}
  end

  def self.all
    @@all
  end

end
