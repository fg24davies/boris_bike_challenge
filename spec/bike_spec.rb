require 'bike'

describe Bike do
  alias_method :bike, :subject
  
  it 'is of class Bike' do
    expect(bike).to be_instance_of Bike
  end

  it 'working?' do
    expect(bike).to be_working
  end

  it 'responds to working?' do
    expect(Bike.new).to respond_to :working?
  end
  
  # challenge 18
  context "the bike is broken" do
    broken_bike = Bike.new(false)
    it 'on return' do
      expect(broken_bike.working?).to eq(false) 
    end   
  end
end
