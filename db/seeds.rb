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

Song.create(name: "Hey Jude", artist_id: beatles.id, genre_id: pop.id)
Song.create(name: "I wanna dance with somebody", artist_id:houston.id, genre_id: pop.id)
Song.create(name: "New York", artist_id: sinatra.id, genre_id: pop.id)
Song.create(name: "Videogames", artist_id: rey.id, genre_id: indie.id)
Song.create(name: "Ruby Jones", artist_id: dead.id, genre_id: rock.id)

binding.pry
true
