require 'DockingStation'
require 'Bike'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it 'has a method release_bike that returns a bike' do
    expect(subject.release_bike).to be_instance_of Bike
  end
  it 'has a method release_bike that returns a working bike' do
    expect(subject.release_bike.working?).to eq true
  end
end
