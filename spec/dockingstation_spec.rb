require 'dockingstation.rb'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it 'returns working bike object when bike is released' do
    expect(subject.release_bike).to be_a_kind_of(Bike)
    expect(subject.release_bike.working?).to eq true
  end
end
