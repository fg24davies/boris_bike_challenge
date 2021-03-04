# require 'bike.rb'

class DockingStation
attr_reader :docking_station, :bike
  def initialize
    @docking_station = []
  end

  def release_bike
    raise "No bikes" if @docking_station.empty?
  	@docking_station.last
  end

  def return_bike(bike)
    raise "No space for bikes"  if !@docking_station.empty?
    @docking_station << bike
  end

  def show_bikes
    @docking_station
  end

end
