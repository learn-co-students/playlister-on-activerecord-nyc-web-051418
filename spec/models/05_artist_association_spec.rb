describe 'Artist Associations' do
  before do
    @prince = Artist.create(name: "Prince")
  end

  before do
    @mariah = Artist.create(name: "Mariah Carey")
  end

  it 'can build a song' do
    song = @prince.songs.build(name: "A Song By Prince")
    song.save

    expect(@prince.songs).to include(song)
  end

  it 'can create a song' do
    song = @prince.songs.create(name: "A Different Song By Prince")

    expect(@prince.songs).to include(song)
  end

  it 'knows about songs that are affiliated with it' do
    song = Song.create(name: "Bestest Song in the Worldz", artist: @prince)

    expect(@prince.songs).to include(song)
  end

  it 'can add many songs at the same time' do
    song_1 = Song.create(:name => "A Song By Prince")
    song_2 = Song.create(:name => "A Song By Prince 2")
    @prince.songs << [song_1, song_2]

    expect(Artist.find_by(name: "Prince").songs.count).to eq(2)
  end

  it 'can add many songs at the same time' do
    song_3 = Song.create(:name => "Emotions")
    song_4 = Song.create(:name => "Someday")
    song_5 = Song.create(:name => "Hero")
    @mariah.songs << [song_3, song_4, song_5]

    expect(Artist.find_by(name: "Mariah Carey").songs.count).to eq(3)
  end

  it 'knows about its genres' do
    song = Song.create(name: "Super Hip Music")
    genre = Genre.create(name: "Soul")
    song.genre = genre
    song.save
    @prince.songs << song

    expect(@prince.genres).to include(genre)
  end

end
