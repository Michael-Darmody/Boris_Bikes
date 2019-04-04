require 'docking_station'


describe DockingStation do

  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  # it 'releases a new Bike object when working' do
    # bike = subject.release_bike
    # expect(bike).to be_working
  # end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#release_bike' do
    it 'throws an error if the dock is empty' do
    expect { (subject.release_bike) }.to raise_error("No bikes are docked")
    end
  end

    it 'throws an error if the dock is full' do
      bike = Bike.new
      subject.dock(bike)
      bike_2 = Bike.new
      expect { (subject.dock(bike_2)) }.to raise_error("The docking station is full")

    end
end
