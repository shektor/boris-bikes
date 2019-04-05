require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise("No bikes")
    end
      @bikes.pop
  end

  def dock(bike)
    if @bikes.count >= 20
      raise "Docking station full"
    end
    @bikes << bike
  end
end
