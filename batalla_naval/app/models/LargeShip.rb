class LargeShip
	attr_reader :x
  attr_reader :y

	def initialize(x,y)
    	@x = [x, x]
    	@y = [y, y + 1]
  	end

  	def locationIs?(x, y)
  		 left = @x[0] == x && @y[0] == y
  		 right = @x[1] == x && @y[1] == y 
  		 left || right
  	end

  	def hitAt(x,y)
  		if @y[0] == y then
  			@x[0] = nil
  			@y[0] = nil
  		else
  			@x[1] = nil
  			@y[1] = nil
  		end
  	end
end