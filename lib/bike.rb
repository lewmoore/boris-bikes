class Bike

  attr_accessor :condition

  def initialize(condition = true)
    @condition = condition
  end

  def working?(condition)
    @condition = condition
    return condition
  end
end
