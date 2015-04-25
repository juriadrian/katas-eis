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

	def pointsPlayerTwo()
		return @counterPlayerOne['points']
	end
end
