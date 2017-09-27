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

  it {is_expected.to respond_to :dock}


  it 'has a method dock that accepts a bike' do
    subject.dock Bike.new
    expect(subject.docked_bike).to be_instance_of Bike
  end
end
