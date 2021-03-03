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
  it {  expect(DockingStation.new).to respond_to :release_bike }
end

describe DockingStation do
  it 'releases a bike' do 
    expect(DockingStation.new.release_bike).to be_instance_of Bike
  end 
end 


