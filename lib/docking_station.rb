require_relative 'bike'
require_relative 'bike_container'

class DockingStation

  MAX_CAPACITY = 20

  include BikeContainer

  def dock(bike, working = true)
    raise 'Docking station full' if full?
    bike.report_broken unless working
    bikes << bike
  end

  def release_bike
    raise 'No bike available' if empty? || !first_working_bike
    bikes.delete_at(first_working_bike)
  end

private

  def first_working_bike
    bikes.find_index { |bike| bike.working }
  end

end
