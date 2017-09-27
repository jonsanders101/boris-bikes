require 'DockingStation'
require 'Bike'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it 'has a method release_bike that returns a bike' do
    subject.dock Bike.new
    expect(subject.release_bike).to be_instance_of Bike
  end
  it 'has a method release_bike that returns a working bike' do
    subject.dock Bike.new
    expect(subject.release_bike.working?).to eq true
  end

  it {is_expected.to respond_to :dock}

  it 'has a method dock that accepts a bike' do
    subject.dock Bike.new
    expect(subject.docked_bikes[0]).to be_instance_of Bike
  end

  it 'enables users to check the bike that has been docked' do
    sample_bike = Bike.new
    subject.dock sample_bike
    expect(subject.docked_bikes[0]).to eq sample_bike
  end

  it 'enables users to release the bike that has been docked' do
    sample_bike = Bike.new
    subject.dock sample_bike
    expect(subject.release_bike).to eq sample_bike
  end

  it 'raises an error if a user tries to release a bike when there is no bike' do
    expect{subject.release_bike}.to raise_error('No bike available')
  end

  it 'raises an error if a user tries to dock a bike when there is already a bike' do
    expect{(subject.DEFAULT_CAPACITY + 1).times { subject.dock Bike.new }}.to raise_error('Docking station full')
  end

end
