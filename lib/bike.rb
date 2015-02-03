class Bike

	def initialize
		fix!

	end
		
	
	def broken? 
	#If the user tells us, the bike is broken -> return true 
	#else false
		@broken

	end

	def break!
		@broken = true
	end

	def fix!
		@broken = false
		self
	end

end
