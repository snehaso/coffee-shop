require 'spec_helper'

describe Coffee do

  context 'latte' do
    before do
      @latte = Coffee.new([Ingredient.milk(2), Ingredient.coffee(1)])
    end
    it 'latte should consist of 2 milk and 1 coffee' do
      expect(@latte.toString).to eq(String.new('2 milk, 1 coffee'))
    end

    it 'a latte should cost 35' do
      expect(@latte.cost).to eq(Money.new(35))
    end
  end

  context 'cappuccino' do
    before do
      @cappuccino = Coffee.new([Ingredient.water(1), Ingredient.milk(1), Ingredient.coffee(1)])
    end
    it 'should consist of 1 water, 1 milk, 1 coffee' do
      expect(@cappuccino.toString).to eq(String.new('1 water, 1 milk, 1 coffee'))
    end

    it 'should cost 35' do
      expect(@cappuccino.cost).to eq(Money.new(25))
    end
  end

  context 'americano' do
    before do
      @americano = Coffee.new([Ingredient.water(1), Ingredient.coffee(2)])
    end
    it 'should consist of 1 water, 2 coffee' do
      expect(@americano.toString).to eq(String.new('1 water, 2 coffee'))
    end

    it 'should cost 35' do
      expect(@americano.cost).to eq(Money.new(30))
    end
  end

  context 'iced frappe' do
    before do
      @iced_frappe = Coffee.new([Ingredient.coffee(1), Ingredient.milk(1), Ingredient.ice(1),
                                 Ingredient.whipped_cream(1), Ingredient.chocolate(1)])
    end
    it 'should consist of 1 water, 2 coffee' do
      expect(@iced_frappe.toString).to eq(String.new('1 coffee, 1 milk, 1 ice, 1 whipped cream, 1 chocolate'))
    end

    it ' should cost 35' do
      expect(@iced_frappe.cost).to eq(Money.new(75))
    end
  end
end