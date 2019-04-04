require './lib/bike.rb'

class DockingStation
  def release_bike
    Bike.new
  end
attr_reader :bike
  def dock(bike)
    @bike = bike
end

def see
end

end
