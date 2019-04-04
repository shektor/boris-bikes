require 'dockingstation'

describe DockingStation do
  describe '#release_bike' do
    it { is_expected.to respond_to(:release_bike) }
    it { expect(subject.release_bike).to be_a Bike }
    it { expect(subject.release_bike).to be_working }
  end
  describe "#dock" do
    it { is_expected.to respond_to(:dock).with(1).argument }
    it 'docks a bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
  end
end
