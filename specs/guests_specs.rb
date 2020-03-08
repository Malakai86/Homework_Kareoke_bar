require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guests')

class GuestTest < Minitest::Test

def setup()
  @guest = Guest.new("Dave", 20, "Bad Guy")
end

def test_guest_has_name()
  assert_equal("Dave", @guest.name)
end

def test_guest_can_spend()
  @guest.pay_fee(10)
  assert_equal(10, @guest.wallet)
end


end
