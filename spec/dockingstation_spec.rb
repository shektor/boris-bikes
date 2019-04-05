require 'dockingstation'

describe DockingStation do
  describe '#release_bike' do
    it { is_expected.to respond_to(:release_bike) }
    it 'will raise an error when there are no bikes' do
      expect { subject.release_bike }.to raise_error("No bikes")
    end
    # it { expect(subject.release_bike).to be_a Bike }
    # it 'releases a working bike' do
    #   bike = subject.release_bike
    #   expect(bike).to be_working
    # end
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
