require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bar')

class RoomTest < Minitest::Test

def setup()
  @bar = [
    {
      drink: "Beer",
      price: 4
    },
    {
      drink: "Wine",
      price: 5
    }
  ]
  @total_money = 10
end

def test_bar_has_drink()
  assert_equal("Beer", @bar[0][:drink])
end

def test_bar_has_price()
  assert_equal(5, @bar[1][:price])
  assert_equal(4, @bar[0][:price])
end

def test_total_cash()
  assert_equal(10, @total_money)
end


end
