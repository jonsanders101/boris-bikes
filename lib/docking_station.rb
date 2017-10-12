require_relative 'Bike'


class DockingStation

  MAX_CAPACITY = 20

  attr_reader :docked_bikes, :capacity

  def initialize(capacity = MAX_CAPACITY)
    @docked_bikes = []
    @capacity = capacity
  end

  def release_bike
    raise 'No bike available' if empty?
    @docked_bikes.shift
  end

  def dock bike
    raise 'Docking station full' if full?
    @docked_bikes << bike
  end

  private
  def full?
    @docked_bikes.length >= @capacity
  end

  def empty?
    @docked_bikes.empty?
  end
end
