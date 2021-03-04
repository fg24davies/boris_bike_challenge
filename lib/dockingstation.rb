# require 'bike.rb'
# a collection is an Array or a Hash 
class DockingStation

  attr_reader :docking_station
  DEFAULT_CAPACITY = 20

  def initialize
    @docking_station = []
  #  @DEFAULT_CAPACITY = 20
  end

  def release_bike
    raise "No bikes" if empty?
  	@docking_station.last
  end

  def return_bike(bike)
    raise "Dock Full"  if full?
    @docking_station << bike
  end

  def show_bikes
    @docking_station
  end

  private 

  def full?
    @docking_station.count >= DEFAULT_CAPACITY
  end 

  def empty?
    @docking_station.empty?
  end
end


# don't want @variable defined in the class? 
# could have used @@lowercasename to make it a class variable
# uppercase makes its a CLASS CONSTANT - good because ?
