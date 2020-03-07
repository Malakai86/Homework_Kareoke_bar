require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')
require_relative('../guests')
require_relative('../song')
require_relative('../kareoke_bar')

class Kareoke_barTest < Minitest::Test

  def setup()
    @kareoke_bar = Kareoke_bar.new("Big Swinging Hits")
    @guest1 = Guest.new("Clive", 30)
    @guest2 = Guest.new("Jane", 20)
    @song1 = Song.new("Aeroplane", "Red Hot Chili Peppers")
    @song2 = Song.new("Fast Car", "Tracy Chapman")

    @songs = [@song1, @song2]
  end

  def test_kareoke_bar_has_name()
    assert_equal("Big Swinging Hits", @kareoke_bar.name)
end

def test_room_is_empty()
  assert_equal(0, @kareoke_bar.room_count())
end

  def test_add_guest_to_room()
    @kareoke_bar.add_guest(@guest1)
    assert_equal(1, @kareoke_bar.room_count())
end

def test_song_count_is_zero()
  assert_equal(0, @kareoke_bar.song_count())
end

def test_add_song_to_room()
  @kareoke_bar.add_song(@song1)
  assert_equal(1, @kareoke_bar.song_count())
end

def test_remove_guests_from_room()
  @kareoke_bar.remove_guest(@guest1)
  assert_equal(0, @kareoke_bar.room_count())
end

def test_too_many_guests()
  new_guest = Guest.new("Tony", 30)
  @kareoke_bar.add_guest(new_guest)
  @kareoke_bar.add_guest(@guest1)
  @kareoke_bar.add_guest(@guest2)
  @kareoke_bar.remove_guest(new_guest)
  assert_equal(2, @kareoke_bar.room_count)
end
end
