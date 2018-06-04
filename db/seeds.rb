sufjan = Artist.create(name: "Sufjan Stevens")
fleet = Artist.create(name: "Fleet Foxes")
who = Artist.create(name: "The Who")

indie = Genre.create(name: "indie")
folk = Genre.create(name: "folk")
classic = Genre.create(name: "classic")

binding.pry

impossible = Song.create(name: "Impossible Soul", artist: sufjan, genre: indie)
chicago = Song.create(name: "Chicago", artist: sufjan, genre: indie)
carrie = Song.create(name: "Carrie & Lowell", artist: sufjan, genre: folk)

montezuma = Song.create(name: "Montezuma", artist: fleet, genre: folk)
lorelai = Song.create(name: "Lorelai", artist: fleet, genre: folk)

baba = Song.create(name: "Baba O'Reily", artist: who, genre: classic)
pinball = Song.create(name: "Pinball Wizard", artist: who, genre: classic)
magic = Song.create(name: "Magic Bus", artist: who, genre: classic)

binding.pry

Pry.start
true
