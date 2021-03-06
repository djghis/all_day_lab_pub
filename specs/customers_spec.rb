require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../pub.rb')
require_relative('../drinks.rb')
require_relative('../customers.rb')

class TestCustomers < Minitest::Test
  
  def setup
  @customer = Customers.new("GG", 100, 38)
  end

  def test_show_age
    assert_equal(38, @customer.age)
  end

end
