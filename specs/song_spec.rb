require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new("Take On Me", "Aha")
    @song2 = Song.new("Billie Jean", "Michael Jackson")
    @song3 = Song.new("Bohemian Rhapsody", "Queen")
  end

  def test_song_has_name
    assert_equal("Take On Me", @song1.name)
  end

  def test_song_has_artist_name
    assert_equal("Michael Jackson", @song2.artist)
  end

end
