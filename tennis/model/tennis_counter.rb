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
			if deuce
				@counterPlayerOne['points'] = 'adv'
			elsif counterPlayerTwo['points'] == 'adv'
				counterPlayerTwo['points'] = 40
			else
				playerOneWinGame
			end
		when 'adv'
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
			if deuce
				@counterPlayerTwo['points'] = 'adv'
			elsif counterPlayerOne['points'] == 'adv'
				counterPlayerOne['points'] = 40
			else
				playerTwoWinGame
			end
		when 'adv'
			playerTwoWinGame
		end
	end

	def deuce
		return @counterPlayerOne['points'] == 40 && @counterPlayerTwo['points'] == 40
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
			playerTwoWinSet
		else
			@counterPlayerTwo['games'] += 1
			@counterPlayerTwo['points'] = 0
		end
	end

	def playerOneWinSet
		if counterPlayerOne['sets'] == 1
			@counterPlayerOne['sets'] += 1
			playerOneWinMatch
		else
			@counterPlayerOne['points'] = 0
			@counterPlayerOne['games'] = 0
			@counterPlayerOne['sets'] += 1
			@counterPlayerTwo['points'] = 0
			@counterPlayerTwo['games'] = 0
		end
	end

	def playerTwoWinSet
		if counterPlayerTwo['sets'] == 1
			@counterPlayerTwo['sets'] += 1
			playerTwoWinMatch
		else
			@counterPlayerTwo['points'] = 0
			@counterPlayerTwo['games'] = 0
			@counterPlayerTwo['sets'] += 1
			@counterPlayerOne['points'] = 0
			@counterPlayerOne['games'] = 0
		end
	end

	def playerOneWinMatch
		puts 'player one is the winner'
	end

	def playerTwoWinMatch
		puts 'player two is the winner'
	end


end