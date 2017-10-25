require 'Bike'

describe Bike do

  subject(:bike) { described_class.new }
  it {is_expected.to respond_to :working}

  describe'#new' do
    it 'creates a new bike that is working by default' do
      expect(bike.working).to eq true
    end
  end

  describe '#report_broken' do
    it "changes @working to false" do
      expect{ subject.report_broken }.to change { subject.working }.from(true).to(false)
    end
  end
end
