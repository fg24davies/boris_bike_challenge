# require 'bike.rb'
# a collection is an Array or a Hash 
class DockingStation

  attr_accessor :docking_station, :capacity, :broken_bikes
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @docking_station = []
    @broken_bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "No bikes" if empty? 
    @docking_station.last
  end


  def return_bike(bike)
    raise "Dock Full" if full?
    if bike.status == true
      @docking_station << bike
      puts "working bike docked" 
    else 
      @broken_bikes << bike
      puts "broken bike docked"
    end
  end

  def show_bikes
    @docking_station
  end

  private 

  def full?
    @docking_station.count + @broken_bikes.count >= capacity
  end 

  def empty?
    @docking_station.empty? 

  end
end




# don't want @variable defined in the class? 
# could have used @@lowercasename to make it a class variable
# uppercase makes its a CLASS CONSTANT - good because ?
