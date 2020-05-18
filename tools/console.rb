require_relative '../config/environment.rb'



artist1 = Artist.new("Claude", 25)
artist2 = Artist.new("Leonard", 67)
artist3 = Artist.new("Sal", 11)
artist4 = Artist.new("Darth", 15)
artist5 = Artist.new("Michelangelo", 400)

gallery1 = Gallery.new("We Have the Art", "NYC")
gallery2 = Gallery.new("We Don't have any art", "San Francisco")
gallery3 = Gallery.new("Modern Classics", "Paris")
gallery4 = Gallery.new("Generic Art Gallery", "NYC")

painting1 = Painting.new("Run Away", 17, artist1, gallery1)
painting2 = Painting.new("Fruit Basket", 570, artist1, gallery1)
painting3 = Painting.new("Seven", 12000, artist2, gallery3)
painting4 = Painting.new("I'm Hungry", 340, artist3, gallery3)
painting5 = Painting.new("Cold Beer", 11, artist4, gallery3)
painting6 = Painting.new("Free T Shirt", 990, artist1, gallery4)
painting7 = Painting.new("Gang Gang", 40000, artist2, gallery4)
painting8 = Painting.new("Murder on the Orient Express", 30, artist2, gallery4)
painting9 = Painting.new("Dumbo", 3000, artist3, gallery1)







binding.pry

puts "Bob Ross rules."
