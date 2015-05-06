require_relative '../../app/models/LargeShip.rb'
require_relative '../spec_helper.rb'

describe 'Large Ship' do

  before (:each) do
    @largeShip = LargeShip.new(3, 3)
  end

  it 'should the location be 3:3' do
  	expect(@largeShip.locationIs?(3, 3)).to eq true
  end

end

