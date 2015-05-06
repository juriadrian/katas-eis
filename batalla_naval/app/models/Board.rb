require_relative 'SmallShip'
require_relative 'LargeShip'

class Board
  attr_reader :size
  attr_reader :ships

  def initialize(x,y)
    @size = [x,y]
    @ships = []
  end

  def createLocation(location)
    coords = []
    xy = location.split(':')
    coords.push(xy[0].to_i)
    coords.push(xy[1].to_i)
    coords
  end

  def createSmallShipInPosition(location)
    xy = createLocation(location)
  	smallShip = SmallShip.new(xy[0], xy[1])
  	@ships.push(smallShip) 
  end

  def createLargeShipInPosition(location)
    xy = createLocation(location)
    largeShip = LargeShip.new(xy[0], xy[1])
    @ships.push(largeShip) 
  end  

  def isEmptyPosition?(location)
    xy = createLocation(location)
    x = xy[0]
    y = xy[1]
  	exist = true
  	for s in @ships do
  		exist = exist && !s.locationIs?(x, y)
  	end
  	return exist
  end

  def shootAtPosition(location)
    xy = createLocation(location)
    x = xy[0]
    y = xy[1]
    ship = nil
    hit = false
    for s in @ships do
      if s.locationIs?(x, y) then
        s.hitAt(x, y)
        ship = s
        hit = true
      end
    end
    if ship != nil && ship.gotSink?() then
      board.delete(s)
    end
    return hit

  end

end