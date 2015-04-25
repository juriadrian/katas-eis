class TennisCounter


	def initialize(playerOne, playerTwo)
		@playerOne = playerOne
		@playerTwo = playerTwo
		@counterPlayerOne = {'points' => 0, 'games' => 0, 'sets' => 0}
		@counterPlayerTwo = {'points' => 0, 'games' => 0, 'sets' => 0}
	end

	def pointsPlayerOne
		return @counterPlayerOne['points']
	end

	def counterPlayerOne
		return @counterPlayerOne
	end

	def pointsPlayerTwo
		return @counterPlayerOne['points']
	end

	def counterPlayerTwo
		return @counterPlayerTwo
	end

	def scoredPoint(player)
		if player == 'playerOne'
			playerOneScoredAPoint
		else
			playerTwoScoredAPoint
		end
	end

	def playerOneScoredAPoint
		case @counterPlayerOne['points']
		when 0
			@counterPlayerOne['points'] += 15
		when 15
			@counterPlayerOne['points'] += 15
		when 30
			@counterPlayerOne['points'] += 10
		when 40
			playerOneWinGame
		end
	end

	def playerTwoScoredAPoint
		case @counterPlayerTwo['points']
		when 0
			@counterPlayerTwo['points'] += 15
		when 15
			@counterPlayerTwo['points'] += 15
		when 30
			@counterPlayerTwo['points'] += 10
		when 40
			playerOneWinGame
		end
	end

	def playerOneWinGame
		if @counterPlayerOne['games'] == 5
			playerOneWinSet
		else
			@counterPlayerOne['games'] += 1
			@counterPlayerOne['points'] = 0
			@counterPlayerTwo['points'] = 0
		end
	end

	def playerTwoWinGame
		if @counterPlayerTwo['games'] == 5
			playerOneWinSet
		else
			@counterPlayerTwo['games'] += 1
			@counterPlayerTwo['points'] = 0
		end
	end

end