require 'bike.rb'
describe Bike do
  it {is_expected.to respond_to :working?}

  it 'should report as broken' do
    expect(subject.working?(false)).to eq false
  end

  it 'bike working? defaults to true' do
    expect(subject.working?(true)).to eq true
  end
end
