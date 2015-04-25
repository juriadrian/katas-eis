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

	it 'should return 15 when playerOne scored the first point' do
		tennisCounter.playerOneScoredAPoint
		tennisCounter.counterPlayerOne['points'].should be 15
		tennisCounter.counterPlayerOne['sets'].should be 0
	end

	

end
