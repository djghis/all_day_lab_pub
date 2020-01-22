class Drinks

  attr_reader :price, :alcohol_level

  def initialize(name, price, alcohol_level)
    @name = name
    @price = price
    @alcohol_level = alcohol_level
  end
end
