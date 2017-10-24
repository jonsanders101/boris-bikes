require_relative 'bike'

module BikeContainer

  attr_reader :capacity, :docked_bikes

  def initialize(capacity = MAX_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike, working = true)
    raise 'Docking station full' if full?
    bike.report_broken unless working
    @bikes << bike
  end

  def release_bike
    raise 'No bike available' if empty? || !first_working_bike
    @bikes.delete_at(first_working_bike)
  end

  private

  def full?
    bikes.length >= capacity
  end

  def empty?
    bikes.empty?
  end

  def first_working_bike
    bikes.find_index { |bike| bike.working }
  end

end
