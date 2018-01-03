require 'dockingstation.rb'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it 'returns working bike object when bike is released' do
    expect(subject.release_bike).to be_a_kind_of(Bike)
    expect(subject.release_bike.working?).to eq true
  end
  # it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike)}
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
end




# describe Dockingstation.dock(Bike.new) do
#   it 'stores a bike when a bike is docked' do
#     expect(Dockingstation.).to
# end
