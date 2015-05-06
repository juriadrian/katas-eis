require_relative '../../app/models/LargeShip.rb'
require_relative '../spec_helper.rb'

describe 'Large Ship' do

  before (:each) do
    @largeShip = LargeShip.new(3, 3)
  end

  it 'should the location be 3:3' do
  	expect(@largeShip.locationIs?(3, 3)).to eq true
  end

  it 'should the location be 3:4' do
  	expect(@largeShip.locationIs?(3, 3)).to eq true
  end

  it 'should not (the location) be 3:5' do
  	expect(@largeShip.locationIs?(3, 5)).to eq false
  end

end

