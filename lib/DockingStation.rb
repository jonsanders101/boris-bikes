require_relative 'Bike'


class DockingStation

  attr_reader :docked_bikes, :DEFAULT_CAPACITY

  def initialize
    @docked_bikes = []
    @DEFAULT_CAPACITY = 20
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
    @docked_bikes.length >= @DEFAULT_CAPACITY
  end

  def empty?
    @docked_bikes.length == 0
  end
end
