require 'bike.rb'
describe Bike do
  it {is_expected.to respond_to :working?}

  it 'should report as broken' do
    expect(subject.working?(false)).to eq false
  end
  it 'should default to true unless reported as broken' do
    expect(subject.working?).to eq true
  end
end
