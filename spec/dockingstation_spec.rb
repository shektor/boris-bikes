require 'dockingstation'

describe DockingStation do
  describe '#release_bike' do
    it { is_expected.to respond_to(:release_bike) }
    it { expect(subject.release_bike).to be_a Bike }
    it { expect(subject.release_bike).to be_working }
  end
end
