require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to (:release_bike) }
  it { is_expected.to respond_to(:docking_bike).with(1).arguments }

  it 'should set a capacity if given argument otherwise default to 20' do
    expect(DockingStation.new(50).capacity).to eq 50
    expect(DockingStation.new.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe '#release_bike' do
      it 'release a bike' do
        expect{ subject.release_bike }.to raise_error("sorry, no bikes")
      end

      it "doesn't release a bike if it's broken" do
        broken_bike= Bike.new
        broken_bike.status= false
        subject.docking_bike(broken_bike)
        expect(subject.release_bike).to eq "Bike is broken!"
      end
  end

  describe '#docking_bike' do
      it 'stops docking bikes' do
        DockingStation::DEFAULT_CAPACITY.times { subject.docking_bike Bike.new }
        expect {raise "sorry, dock is full"}.to raise_error ("sorry, dock is full")
      endirb

  end

end
