class TennisCounter


	def initialize(playerOne, playerTwo)
		@playerOne = playerOne
		@playerTwo = playerTwo
		@counterPlayerOne = {'points' => 0, 'games' => 0, 'sets' => 0}
		@counterPlayerTwo = {'points' => 0, 'games' => 0, 'sets' => 0}
	end

	def pointsPlayerOne()
		return @counterPlayerOne['points']
	end

	def counterPlayerOne
		return @counterPlayerOne
	end

	def pointsPlayerTwo()
		return @counterPlayerOne['points']
	end

	def playerOneScoredAPoint()
		case @counterPlayerOne['points']
		when 0
			@counterPlayerOne['points'] += 15
		when 15
			@counterPlayerOne['points'] += 15
		when 30
			@counterPlayerOne['points'] += 10
		when 40
			playerOneAddGame()
		end
	end

end