require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new("CodeClan Caraoke", 15, [], [])

    @guest1 = Guest.new("Adam", 20)
    @guest2 = Guest.new("Esijemine", 20)
    @guest3 = Guest.new("Jonathan", 20)
    @guest4 = Guest.new("Gavin", 20)
    @guest5 = Guest.new("Chris", 20)

    @song1 = Song.new("Take On Me", "Aha")
    @song2 = Song.new("Billie Jean", "Michael Jackson")
    @song3 = Song.new("Bohemian Rhapsody", "Queen")

  end

  def test_room_has_name
    assert_equal("CodeClan Caraoke", @room1.name)
  end

  def test_room_has_space
    assert_equal(15, @room1.space)
  end

  def test_room_increase_space
    @room1.add_space(10)
    assert_equal(25, @room1.space)
  end

  def test_room_has_guests
    assert_equal(0, @room1.count_guests)
  end

  def test_check_in_guest_to_room
    @room1.check_in_guest(@guest2)
    assert_equal(1, @room1.count_guests)
  end

  def test_check_out_guest_from_room
    @room1.check_out_guest(@guest2)
    assert_equal(0, @room1.count_guests)
  end

  def test_room_has_songs
    assert_equal(0, @room1.count_songs)
  end

  def test_add_song_to_room
    @room1.add_song(@song1)
    assert_equal(1, @room1.count_songs)
  end



end
