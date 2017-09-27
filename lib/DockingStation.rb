require_relative 'Bike'


class DockingStation

  attr_reader :docked_bikes, :capacity

  def initialize(capacity = 20)
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
    @docked_bikes.length == 0
  end
end
