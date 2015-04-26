require 'rspec'
require_relative '../model/tennis_counter.rb'

describe 'TennisCounter' do
	
	playerOne = "playerOne"
	playerTwo = "playerTwo"

	tennisCounter = TennisCounter.new(playerOne, playerTwo)

	it 'should return 0 when the match starts' do
		tennisCounter.pointsPlayerOne.should be 0
		tennisCounter.pointsPlayerTwo.should be 0
	end

	it 'should return 15 when playerOne scored the first point' do
		tennisCounter.scoredPoint(playerOne)
		tennisCounter.counterPlayerOne['points'].should be 15
		tennisCounter.counterPlayerOne['sets'].should be 0
	end

	it 'should return 15 15 when playerTwo also socored a point' do
		tennisCounter.scoredPoint(playerTwo)
		tennisCounter.counterPlayerOne['points'].should be 15
		tennisCounter.counterPlayerTwo['points'].should be 15
	end

	it 'should return 0 points and 1 game when player one wins a game' do
		tennisCounter.playerOneScoredAPoint
		tennisCounter.playerOneScoredAPoint
		tennisCounter.playerOneScoredAPoint
		tennisCounter.counterPlayerOne['points'].should be 0
		tennisCounter.counterPlayerOne['games'].should be 1
		tennisCounter.counterPlayerTwo['points'].should be 0
	end

	it 'should return 2 games when player one wins 2 games' do
		tennisCounter.playerOneScoredAPoint
		tennisCounter.playerOneScoredAPoint
		tennisCounter.playerOneScoredAPoint
		tennisCounter.playerOneScoredAPoint
		tennisCounter.counterPlayerOne['points'].should be 0
		tennisCounter.counterPlayerTwo['points'].should be 0
		tennisCounter.counterPlayerOne['games'].should be 2
		tennisCounter.counterPlayerTwo['games'].should be 0
	end

	it 'should return deuce when 40 - 40' do
		tennisCounter.counterPlayerOne['points'] = 40
		tennisCounter.counterPlayerTwo['points'] = 30
		tennisCounter.playerTwoScoredAPoint
		tennisCounter.deuce.should be true
	end

	it 'should return  advantage player two when he score in deuce' do
		tennisCounter.playerTwoScoredAPoint
		tennisCounter.counterPlayerOne['points'].should be 40
		expect(tennisCounter.counterPlayerTwo['points']).to eq('adv')
	end



end
