require_relative '../app/models/artist'
require_relative '../app/models/genre'
require_relative '../app/models/song'

beatles = Artist.create(name: "The Beatles")
houston = Artist.create(name:"Whitney Houston")
sinatra = Artist.create(name: "Frank Sinatra")
rey = Artist.create(name: "Lana del Rey")
dead = Artist.create(name: "The Greatful Dead")

pop = Genre.create(name: "pop")
rock = Genre.create(name: "rock")
indie = Genre.create(name: "indie")

jude = Song.create(name: "Hey Jude", artist: beatles, genre: pop)

dance = Song.create(name: "I wanna dance with somebody", artist:houston, genre: pop)

ny = Song.create(name: "New York", artist: sinatra, genre: pop)

videogames = Song.create(name: "Videogames", artist: rey, genre: indie)

jones = Song.create(name: "Ruby Jones", artist: dead, genre: rock)

binding.pry
true
