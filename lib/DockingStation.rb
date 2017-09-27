require_relative 'Bike'


class DockingStation

  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
  end

  def release_bike
    raise 'No bike available' if @docked_bikes.length == 0
    @docked_bikes.shift
  end

  def dock bike
    raise 'Docking station full' if @docked_bikes.length == 20
    @docked_bikes << bike
  end
end
