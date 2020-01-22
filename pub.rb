class Pub
  attr_accessor :till, :drinks, :foods

  def initialize(name)
    @name = name
    @till = 0
    @drinks = []
    @foods = []
  end

  def drink_count()
    return @drinks.count()
  end


  def food_count()
    return @foods.count
  end

  def add_food(food)
  # @foods[:food]
    @foods.push(food)
  end


  def add_drink(drink)
    # hash[:item2] = 2
    # @drinks[:drink]
    @drinks.push(drink)
  end

  def money_in_till
    return @till
  end
  # def enough_money(customer)
  #   if customer.wallet >= @drinks[].price
  #     return true
  #   end
  # end

  def buy_drink(drink)
    @drinks.delete(drink)
  end

  def add_drunkness_to_customer(drink)
    @drunkenness += drink
  end

  def buy_drink_from_pub(drink, customer)
  #remove the drink the Pub
  #remove money from wallet
  #add money to till
  buy_drink(drink)
  customer.remove_money_from_wallet(drink.price)
  @till += drink.price
  customer.add_drunkness_to_customer(drink.alcohol_level)
  end



  def check_age(customer)
    if customer.age >= 18
      return true
    end
  end

  def check_if_drunk(level)
    if level >= 10
      return true
    end
    return false
  end
end
