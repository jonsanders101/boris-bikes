require_relative 'Bike'


class DockingStation

  attr_reader :docked_bike

  def initialize
    @docked_bike = Bike.new
  end

  def release_bike
    raise 'No bike available' if !@docked_bike
    bike_to_return = @docked_bike
    @docked_bike = nil
    bike_to_return
  end

  def dock bike
    @docked_bike = bike
  end
end
