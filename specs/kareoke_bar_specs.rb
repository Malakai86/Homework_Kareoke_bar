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
    @room1 = Room.new(10)
    @room2 = Room.new(15)
    @guest1 = Guest.new("Clive", 30)
    @guest2 = Guest.new("Jane", 20)
    @song1 = Song.new("Aeroplane", "Red Hot Chili Peppers")
    @song2 = Song.new("Fast Car", "Tracy Chapman")
  end

  def test_kareoke_bar_has_name()
    assert_equal("Big Swinging Hits", @kareoke_bar.name)
end


end
