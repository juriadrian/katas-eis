class SmallShip

	def initialize(x,y)
    	@x = x
    	@y = y
  	end

  	def locationIs?(x, y)
  		return @x == x && @y == y
  	end

  	def hitAt(x,y)
  		@x = nil
  		@y = nil
  	end

  	def gotSink?()
  		return @x == nil 
  	end

end