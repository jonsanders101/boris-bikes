shared_examples_for BikeContainer do

  let(:bike) { double(:bike) }
  subject(:bike_container) { described_class.new }

  it 'has a default capacity when initialized' do
    expect(subject.capacity).to eq BikeContainer::DEFAULT_CAPACITY
  end

  describe '#load_bike' do
    it 'receives and stores a bike' do
      subject.load_bike(bike)
      expect(subject.bikes).to include(bike)
    end
    it 'raises an error if full' do
      subject.capacity.times { subject.load_bike(bike) }
      expect { subject.load_bike(bike) }.to raise_error("#{self.class.name} is full")
    end
  end
end
