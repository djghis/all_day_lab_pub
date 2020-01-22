class Pub
  attr_accessor :till, :drinks

  def initialize(name)
    @name = name
    @till = 0
    @drinks = []
  end

def drink_count()
  return @drinks.count()
end


  def add_drink(drink)
    @drinks.push(drink)
  end

  # def enough_money(customer)
  #   if customer.wallet >= @drinks[].price
  #     return true
  #   end
  # end


end
