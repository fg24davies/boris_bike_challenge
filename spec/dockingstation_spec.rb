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

  it {  expect(dock).to respond_to :release_bike }
  
  it 'cannot release bike' do
  	expect { dock.release_bike }.to raise_error
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

    it 'raises an error when dock full' do
      bike_1 = Bike.new
      bike_2 = Bike.new 
      dock.return_bike(bike_1)
      expect { dock.return_bike(bike_2) }.to raise_error 'No space for bikes'
    end

#    it 'raises an error when dock full' do
#      dock.return_bike(Bike.new)
#      expect { dock.return_bike Bike.new }.to raise_error 'No space for bikes'
#    end
  end
end

# syntax issue:

# whats the difference between below and above to me they feel the same? 

#  it 'raises an error when dock full' do
#     dock.return_bike(Bike.new)
#      expect { dock.return_bike(Bike.new).return_bike(Bike.new) }.to raise_error 'No space for bikes'
#    end