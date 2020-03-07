require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guests')

class GuestTest < Minitest::Test

def setup()
  @guest = Guest.new("Dave", 20)
end

def test_guest_has_name()
  assert_equal("Dave", @guest.name)
end

def test_guest_has_money()
  assert_equal(20, @guest.wallet)
end

def test_guest_spend()
  @guest.spend(5)
  assert_equal(15, @guest.wallet)
end



end
