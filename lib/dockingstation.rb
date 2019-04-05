require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    if @bike == nil
      raise("No bikes")
    end
      @bike
  end

  def dock(bike)
    if @bike 
      raise "Docking station full"
    end
    @bike = bike
  end
end
