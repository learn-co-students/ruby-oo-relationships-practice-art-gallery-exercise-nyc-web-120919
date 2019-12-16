require_relative '../config/environment.rb'

a1 = Artist.new("eunice", 1)
a2 = Artist.new("deb", 10)
a3 = Artist.new("christine", 5)
a4 = Artist.new("steven", 1)

g1 = Gallery.new("art store", "DC")
g2 = Gallery.new("get cool art", "NYC")
g3 = Gallery.new("artsy fartsy", "LA")
g4 = Gallery.new("paintings", "SF")
g5 = Gallery.new("museum of stuff", "Dallas")

p1 = Painting.new(a1, g1, "mine", 100)
p2 = Painting.new(a2, g3, "could be urs", 500)
p3 = Painting.new(a3, g3, "love art", 4000)
p4 = Painting.new(a4, g4, "shoes", 25)
p5 = Painting.new(a4, g5, "coco is love", 704)


binding.pry

puts "Bob Ross rules."
