class Ingredient

  COSTS = {
      'whipped cream' => ::Money.new(30),
      'ice' => ::Money.new(5),
      'water' => ::Money.new(0),
      'chocolate' => ::Money.new(15),
      'coffee' => ::Money.new(15),
      'milk' => ::Money.new(10)
  }

  def self.whipped_cream quantity
    Ingredient.new('whipped cream', quantity)
  end

  def self.chocolate quantity
    Ingredient.new('chocolate', quantity)
  end

  def self.coffee quantity
    Ingredient.new('coffee', quantity)
  end

  def self.ice quantity
    Ingredient.new('ice', quantity)
  end

  def self.water quantity
    Ingredient.new('water', quantity)
  end

  def self.milk quantity
    Ingredient.new('milk', quantity)
  end

  def cost
    base_cost.times(@quantity)
  end

  def base_cost
    COSTS[@name]
  end

  def toString
    "#{@quantity} #{@name}"
  end

  private
  def initialize(name, quantity)
    @name = name
    @quantity = quantity
  end
end

