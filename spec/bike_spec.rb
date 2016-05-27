require 'bike'

describe Bike do
  it { is_expected.to respond_to :working?}
  it 'is working' do
    bike = Bike.new
    expect(bike.working?).to eq true
    bike.status = false
    expect(bike.working?).to eq false
  end
end
