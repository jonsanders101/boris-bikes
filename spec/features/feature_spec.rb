require 'docking_station'
require 'bike'

describe 'loads MAX_CAPACITY bikes then tests one more' do
  it 'should raise an error' do
    docking_station_a = DockingStation.new
    bikes = []
    DockingStation::MAX_CAPACITY.times { |_loop| bikes << Bike.new }
    bikes.each do |bike|
      docking_station_a.dock bike
    end
    expect { docking_station_a.dock Bike.new }.to raise_error('Docking station full')
  end
end
