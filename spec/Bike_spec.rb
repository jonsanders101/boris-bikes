require 'Bike'

describe Bike do

  subject(:bike) { described_class.new }
  it {is_expected.to respond_to :working}

  it 'enables a user to report it as broken' do
    subject.working = false
    expect(subject.working).to eq false
  end

  describe '#report_broken' do
    it "changes @working to false" do
      expect{ subject.report_broken }.to change { subject.working }.from(true).to(false)
    end
  end
end
