require 'rspec'
require_relative '../model/tennis_counter.rb'

describe 'TennisCounter' do
	
	playerOne = "playerOne"
	playerTwo = "playerTwo"

	tennisCounter = TennisCounter.new(playerOne, playerTwo)

	it 'should return 0' do
		tennisCounter.pointsPlayerOne.should be 0
		tennisCounter.pointsPlayerTwo.should be 0
	end



end
