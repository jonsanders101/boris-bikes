require_relative 'bike'

module BikeContainer

  DEFAULT_CAPACITY = 20

  attr_reader :capacity, :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def load_bike(bike)
    raise "#{self.class.name} is full" if full?
    bikes << bike
  end

  private

  def full?
    bikes.length >= capacity
  end

  def empty?
    bikes.empty?
  end

end
