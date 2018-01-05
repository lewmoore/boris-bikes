require 'dockingstation.rb'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it {is_expected.to respond_to :bike}
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#dock' do
     it 'returns an error when full' do
       bike = Bike.new
       subject.capacity.times {subject.dock(bike)}
       expect{subject.dock(bike)}.to raise_error "Docking station full"
     end
   end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe '#initialize' do
  it 'can change capacity' do
    expect(DockingStation.new(10).capacity).to eq 10
  end
end

end
