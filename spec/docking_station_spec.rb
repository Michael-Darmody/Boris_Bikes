require 'docking_station'
require 'bike'

describe DockingStation do
  it 'responds to release bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'creates a new Bike object if bike is working' do
    bike = subject.release_bike
    expect(bike). to be_working
  end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
end
