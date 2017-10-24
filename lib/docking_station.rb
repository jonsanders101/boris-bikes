require_relative 'Bike'


class DockingStation

  MAX_CAPACITY = 20

  attr_reader :capacity, :docked_bikes

  def initialize(capacity = MAX_CAPACITY)
    @docked_bikes = []
    @capacity = capacity
  end

  def release_bike
    p "Value of !first_working_bike"
    p !first_working_bike
    raise 'No bike available' if empty? || !first_working_bike
    @docked_bikes.delete_at(first_working_bike)
  end

  def dock(bike, working = true)
    raise 'Docking station full' if full?
    bike.report_broken unless working
    @docked_bikes << bike
  end

  private

  def full?
    @docked_bikes.length >= @capacity
  end

  def empty?
    @docked_bikes.empty?
  end

  def first_working_bike
    docked_bikes.find_index { |bike| bike.working }
  end
end
