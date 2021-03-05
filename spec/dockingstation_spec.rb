require 'dockingstation'

# describe DockingStation do
#	it 'is of class DockingStation' do
#		expect(subject).to be_instance_of DockingStation
#	end
# end

describe Bike do
alias_method :bike, :subject

	it 'is of class Bike' do
	  expect(bike).to be_instance_of Bike
	end
	it 'working?' do
  	  expect(bike).to be_working
    end
end


describe DockingStation do
  alias_method :dock, :subject

  context 'creating a new instance of DockingStation with an argument of 30' do
    capacity_test = DockingStation.new(30)
    it 'takes an argument to alter the default capacity' do 
      expect(capacity_test.capacity).to eq(30)
    end
  end 

  it { expect(dock).to respond_to :release_bike }

  it 'has a default capacity when no argument passed' do
    expect(dock.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      dock.return_bike(bike)
      expect(dock.release_bike).to eq bike
    end

    it 'raises an error when no bikes' do
  	  expect { dock.release_bike }.to raise_error 'No bikes'
    end
  end


  describe '#dock' do   
    it 'docks a bike' do
	    expect(dock).to respond_to(:return_bike).with(1).argument
    end


    it 'raises an error when dock is full' do
      dock.return_bike(Bike.new)
      expect { DockingStation::DEFAULT_CAPACITY.times do
         dock.return_bike Bike.new 
      end }.to raise_error 'Dock Full'
    end
  end
end


# classname::constantname -- to use constants in rspec

