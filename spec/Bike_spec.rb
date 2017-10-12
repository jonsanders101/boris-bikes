require 'Bike'

describe Bike do
  it {is_expected.to respond_to :working}

  it 'enables a user to report it as broken' do
    subject.working = false
    expect(subject.working).to eq false
  end


end
