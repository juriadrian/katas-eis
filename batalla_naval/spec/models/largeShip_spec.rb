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

  it 'should get shot' do
  	@largeShip.hitAt(3, 3)
  	expect(@largeShip.x).to eq [nil, 3]
  	expect(@largeShip.y).to eq [nil, 4]
  end

  it 'should get sink when gets shot in both parts' do
  	@largeShip.hitAt(3, 3)
  	@largeShip.hitAt(3, 4)
  	expect(@largeShip.getSink()).to eq true
  end
  	

end

