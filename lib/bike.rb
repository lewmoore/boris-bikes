class Bike

  attr_accessor :condition

  def initialize(condition = true)
    @condition = condition
  end

  def working?(condition)
    @condition = condition
  end

  def status?
    @condition
  end

end
