require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../pub.rb')
require_relative('../drinks.rb')
require_relative('../customers.rb')
require_relative('../food.rb')

class TestPub < Minitest::Test

  def setup

    @customer = Customers.new("GG", 100, 38, 0)
    @customer1 = Customers.new("Tamas", 100, 16,10)
    @drink1 = Drinks.new("Vodka", 4, 2)
    @drink2 = Drinks.new("Vodka", 4, 2)
    @drink3 = Drinks.new("Beer", 2, 1)
    @drink4 = Drinks.new("Beer", 2, 1)
    @food1 = Food.new("Crisps", 3, 1)
    @pub = Pub.new("Granary")
    @pub.add_drink(@drink1)
    @pub.add_drink(@drink2)
    @pub.add_drink(@drink3)
    @pub.add_drink(@drink4)
    @pub.add_food(@food1)

  end

  def test_food_count
    assert_equal(1, @pub.food_count)
  end


  def test_drink_count
    assert_equal(4, @pub.drink_count)
  end


  def test_wallet_amount
    assert_equal(100, @customer.wallet)
  end

  def test_remove_money_from_wallet
    @customer.remove_money_from_wallet(@drink1.price)
    assert_equal(96, @customer.wallet)
  end



    def test_buy_drink
      @pub.buy_drink(@drink1)
      assert_equal(3, @pub.drink_count)
    end

    def test_buy_drink_from_pub
      assert_equal(true, @pub.check_age(@customer))
      @pub.buy_drink_from_pub(@drink1, @customer)
      assert_equal(3, @pub.drink_count)
      assert_equal(96, @customer.wallet_amount)
      assert_equal(4, @pub.money_in_till)
    end


    def test_money_in_till
      assert_equal(0, @pub.till)
    end

    def test_check_age
      age = @pub.check_age(@customer)
      assert_equal(true, age)
    end

    # def test_raise_drunkennes_level
    #   assert_equal(1, @alcohol_level)
    # end

    def test_add_drunkness_to_customer
      @customer.add_drunkness_to_customer(@drink1.alcohol_level)
      assert_equal(2, @customer.drunkenness)
    end

    def test_customer_is_not_drunk
      result = @pub.check_if_drunk(@customer.drunkenness)
      assert_equal(false, result)
    end

    def test_eat_crisps
      @customer1.eat_crisps(@food1)
      assert_equal(9, @customer1.drunkenness)
    end

  # def test_enough_money
  #   assert_equal(true, @pub.enough_money(@customer))
  # end
#
#
# def test_buy_drink
# end

end
