class LargeShip

	def initialize(x,y)
    	@x = [x, x]
    	@y = [y, y + 1]
  	end

  	def locationIs?(x, y)
  		 left = @x[0] == x && @y[0] == y
  		 right = @x[1] == x && @y[1] == y 
  		 left || right
  	end

end