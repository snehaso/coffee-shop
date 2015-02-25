class Coffee
  def initialize(ingredients)
    @ingredients = ingredients
  end

  def toString
    @ingredients.collect { |x| x.toString}.join(', ')
  end

  def cost
    cost_of_ingredients = @ingredients.collect { |x| x.cost }
    sum=Money.new(0)
    cost_of_ingredients.each do |x|
      sum +=x
    end
    sum
  end
end


