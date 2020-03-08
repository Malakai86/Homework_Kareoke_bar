require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')
require_relative('../song')

class SongTest < Minitest::Test

def setup()
  @song = Song.new("America: Horse with no name")
end

  def test_song_has_name()
    assert_equal("America: Horse with no name", @song.name)
  end


end
