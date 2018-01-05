require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity, :bike

   def initialize(capacity=DEFAULT_CAPACITY)
     @bikes = []
     @capacity = capacity
   end

  def release_bike
    # count = 0
    raise 'No bikes available' if empty?
    raise 'this bike is broken' unless @bikes.last.status?
    @bikes.pop
  #
  #       until @bikes[count].status? == true do
  #       puts 'this bike is broken'
  #       count += 1
  #       if @bikes.empty? break
  #     end
  #   @bikes[count]
  #   @bikes.delete_at(count)
  # end
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
