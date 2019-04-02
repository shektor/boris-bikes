require 'dockingstation'

describe DockingStation do
  describe '#release_bike' do
    it 'should respond to release bike' do
      expect(subject).to respond_to(:release_bike)
    end
  end

end
