require 'dockingstation'

describe DockingStation do
  describe '#release_bike' do
    it { is_expected.to respond_to(:release_bike) }
    it { expect(subject.release_bike).to be_a Bike }
    it { expect(subject.release_bike).to be_working }
  end
  describe "#dock" do
    it { is_expected.to respond_to(:dock).with(1).argument }
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    docking_station.dock(bike)

    it { expect(docking_station.bike).to be_a Bike }
  end
end
