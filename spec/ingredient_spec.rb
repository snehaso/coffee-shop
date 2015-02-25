require 'spec_helper'

describe 'Ingredients' do
  it 'milk cost' do
    expect(Ingredient.milk(1).cost).to eq(Money.new(10))
    expect(Ingredient.milk(2).cost).to eq(Money.new(20))
  end

  it 'Coffee cost' do
    expect(Ingredient.coffee(1).cost).to eq(Money.new(15))
    expect(Ingredient.coffee(2).cost).to eq(Money.new(30))
  end

  it 'Whipped Cream cost' do
    expect(Ingredient.whipped_cream(1).cost).to eq(Money.new(30))
    expect(Ingredient.whipped_cream(2).cost).to eq(Money.new(60))
  end

  it 'Chocolate cost' do
    expect(Ingredient.chocolate(1).cost).to eq(Money.new(15))
    expect(Ingredient.chocolate(2).cost).to eq(Money.new(30))
  end

end