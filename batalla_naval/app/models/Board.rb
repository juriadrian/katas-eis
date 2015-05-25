require_relative 'SmallShip'
require_relative 'LargeShip'

class Board
  attr_reader :size
  attr_reader :ships

  def initialize(x,y)
    @size = [x,y]
    @ships = []
    @lastHit = nil
    @water = nil
    @hit = nil
    @sink = nil
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
    for s in @ships do
      if s.locationIs?(x, y) then
        s.hitAt(x, y)
        @lastHit = s
        @hit = true
      end
    end
    if @lastHit.nil? then
      @water = true
      @hit = false
    elsif @lastHit.gotSink?() then
      @sink = true
      @ships.delete(s)
    end
    @lastHit = nil
  end

  def getWater()
    water = @water
    @water = nil
    return water
  end

  def getHit()
    hit = @hit
    @hit = nil
    return hit
  end

  def getSink()
    sink = @sink
    @sink = nil
    return sink
  end

end