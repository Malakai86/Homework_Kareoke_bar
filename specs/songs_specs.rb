require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')
require_relative('../song')

class SongTest < Minitest::Test

def setup()
  @song = Song.new("Horse with no name", "America")
end

  def test_song_has_title()
    assert_equal("Horse with no name", @song.title)
  end

  def test_song_has_artist()
    assert_equal("America", @song.artist)
end
end
