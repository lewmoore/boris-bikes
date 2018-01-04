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
       DockingStation::DEFAULT_CAPACITY.times {subject.dock(bike)}
       expect{subject.dock(bike)}.to raise_error "Docking station full"
     end
   end

#   it 'doenst release a bike' do
#     subject.dock(Bike.new)
#     expect{subject.dock Bike.new }.to raise_error "Docking station full"
#   end
 end
