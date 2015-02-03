class Bike

	def initialize
		@broken = false
	end
		
	
	def broken? 
	#If the user tells us, the bike is broken -> return true 
	#else false
		@broken

	end

	def break!
		@broken = true
	end

end
