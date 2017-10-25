require_relative 'bike'

module BikeContainer

  DEFAULT_CAPACITY = 20

  attr_reader :capacity, :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
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
