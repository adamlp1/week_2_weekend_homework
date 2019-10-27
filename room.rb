class Room

  attr_reader :name, :space

  def initialize(name, space, guests, songs)
    @name = name
    @space = space
    @guests = guests
    @songs = songs

  end

  def add_space(size)
    @space += size
  end

  def count_guests
    return @guests.size
  end

  def check_in_guest(guest)
    @guests << guest
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def count_songs
    return @songs.size
  end

  def add_song(song)
    @songs << song
  end







end
