require 'spec_helper'

describe Money do
  it 'should verify that money accepts only positive numbers as value' do
    expect { Money.new(-100) }.to raise_error(ArgumentError, Money::WRONG_ARGUMENT)
  end

  context 'equality' do
    it 'should verify that 1$ is equal to 1$' do
      oneDollar = Money.new(1)
      oneDollarCopy = Money.new(1)
      expect(oneDollar).to eq(oneDollarCopy)
    end

    it 'should verify that 1$ is not equal to nil' do
      oneDollar = Money.new(1)
      expect(oneDollar).not_to eq(nil)
    end


    it 'should verify that 1$ is not equal any other object type' do
      oneDollar = Money.new(1)
      expect(oneDollar).not_to eq(Object.new())
    end

  end

  context "addition" do
    it '3 + 3 should be 6' do
      expect(Money.new(3) + Money.new(3)).to eq(Money.new(6))
    end
  end
end