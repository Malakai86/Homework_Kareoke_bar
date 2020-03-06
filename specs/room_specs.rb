require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')
require_relative('../guests')
require_relative('../song')

class RoomTest < Minitest::Test

def setup()
  @room = Room.new(10)
end
