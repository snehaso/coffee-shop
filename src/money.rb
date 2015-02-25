class Money
  WRONG_ARGUMENT = 'wrong input value'
  def initialize value
    raise ArgumentError.new(WRONG_ARGUMENT) if value < 0
    @value = value
  end

  def ==(other)
    return false if other.class != self.class || other == nil
    self.value == other.value
  end

  def times(multiply_factor)
    Money.new(self.value * multiply_factor)
  end

  def + other
    Money.new(@value + other.value)
  end

  protected
  attr_reader :value
end