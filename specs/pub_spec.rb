require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../pub.rb')
require_relative('../drinks.rb')
require_relative('../customers.rb')

class TestPub < Minitest::Test

  def setup

    @customer = Customers.new("GG", 100)
    @drink1 = Drinks.new("Vodka", 4)
    @drink2 = Drinks.new("Beer", 2)

    @pub = Pub.new("Granary")
    @pub.add_drink(@drink1)
    @pub.add_drink(@drink2)
  end

  def test_drink_count
    assert_equal(2, @pub.drink_count)
  end

  # def test_enough_money
  #   assert_equal(true, @pub.enough_money(@customer))
  # end
#
#
# def test_buy_drink
# end

end
