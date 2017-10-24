require 'docking_station'
require 'bike'


describe DockingStation do

  let (:bike) { double(:bike, working: true, report_broken: nil) }

  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do

    it 'has a method release_bike that returns a working bike' do
      subject.dock bike
      expect(subject.release_bike.working).to eq true
    end

    it 'enables users to release the bike that has been docked' do
      sample_bike = bike
      subject.dock sample_bike
      expect(subject.release_bike).to eq sample_bike
    end

    it 'raises an error if a user tries to release a bike when there is no bike' do
      expect { subject.release_bike }.to raise_error('No bike available')
    end

    it "won't release a broken bike" do
      allow(bike).to receive(:working) { false }
      subject.dock(bike, false)
      expect { subject.release_bike }.to raise_error('No bike available')
      subject.release_bike
    end
  end

  describe '#dock' do
    it { is_expected.to respond_to :dock }

    it 'enables users to check the bike that has been docked' do
      sample_bike = bike
      subject.dock sample_bike
      expect(subject.docked_bikes[0]).to eq sample_bike
    end

    it 'reports bike as broken if passed "false"' do
      bike = bike
      dock = DockingStation.new
      expect(bike).to receive(:report_broken)
      dock.dock(bike, false)
    end

    it 'raises an error if a user tries to dock a bike when there is already a bike' do
      expect { (subject.capacity + 1).times { subject.dock bike } }.to raise_error('Docking station full')
    end
  end

  describe '::new' do
    it 'accepts a value for the maximum capacity of bikes' do
      station = DockingStation.new(10)
      expect(station.capacity).to eq 10
    end

    it 'defaults to a capacity of 20 if no other capacity is passed' do
      expect(subject.capacity).to eq DockingStation::MAX_CAPACITY
    end
  end
end
