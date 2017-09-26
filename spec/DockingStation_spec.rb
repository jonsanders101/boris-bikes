require 'DockingStation'
describe DockingStation do
# #Multi-line version
#it "Responds releasebike method" do
  # test_dock = DockingStation.new
  # expect(test_dock).to respond_to(:release_bike)
#  subject {DockingStation.new}
  it {is_expected.to respond_to :release_bike}
end
