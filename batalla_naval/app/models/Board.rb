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

  def boatIn?(x, y)
  	exist = true
  	for s in @ships do
  		exist = exist && s.locationIs?(x, y)
  	end
  	return exist
  end

end