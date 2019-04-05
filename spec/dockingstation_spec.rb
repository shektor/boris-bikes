require 'dockingstation'

describe DockingStation do
  describe '#release_bike' do
    it { is_expected.to respond_to(:release_bike) }
    it 'will raise an error when there are no bikes' do
      expect { subject.release_bike }.to raise_error("No bikes")
    end
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'releases a working bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to be_working
    end
  end

  describe "#dock" do
    it { is_expected.to respond_to(:dock).with(1).argument }
    it 'docks a bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq subject.bikes
      # subject.dock(bike)
      # expect(subject.bike).to eq bike
    end
    it 'raises error when docking station is full' do
      20.times { subject.dock Bike.new }
      # subject.dock(bike)
      bike = Bike.new
      expect{ subject.dock(bike) }.to raise_error("Docking station full")
    end
  end
end
