class Customers
attr_reader :age
attr_accessor :wallet, :drunkenness

  def initialize(name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness

  end


  def wallet_amount
    return @wallet
  end

  def remove_money_from_wallet(amount)
    @wallet  -= amount
  end

def add_drunkness_to_customer(drink)
  @drunkenness += drink
end

def eat_crisps(food)
  @drunkenness -= (food.rejuvenation_level)

end

end
