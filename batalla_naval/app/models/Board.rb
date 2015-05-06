require_relative 'SmallShip'

class Board
  attr_reader :size
  attr_reader :ships

  def initialize(x,y)
    @size = [x,y]
    @ships = []
  end

  def createSmallShipInPosition(x, y)
  	smallShip = SmallShip.new(x, y)
  	@ships.push(smallShip) 
  end

  def isEmptyPosition?(x, y)
  	exist = false
  	for s in @ships do
  		exist = exist || s.locationIs?(x, y)
  	end
  	return exist
  end

end