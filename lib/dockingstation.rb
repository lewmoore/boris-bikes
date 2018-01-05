require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity, :bike

   def initialize(capacity=DEFAULT_CAPACITY)
     @bikes = []
     @capacity = capacity
   end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end


  def dock(bike)
    fail "Docking station full" if full?
    @bikes << bike
  end

  private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end
end
