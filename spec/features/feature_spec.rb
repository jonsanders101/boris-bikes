require 'docking_station'
require 'bike'

describe 'loads MAX_CAPACITY bikes then tests one more' do

  it 'should raise an error' do
    docking_station_a = DockingStation.new
    DockingStation::MAX_CAPACITY.times { docking_station_a.dock Bike.new }
    expect { docking_station_a.dock Bike.new }.to raise_error('Docking station full')
  end

end
