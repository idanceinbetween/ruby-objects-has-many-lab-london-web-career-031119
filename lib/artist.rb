class Artist

  attr_accessor :name, :song

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song) #song is already an object
    song.artist = self
    @songs << song
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end
