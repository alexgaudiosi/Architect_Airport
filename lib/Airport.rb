require_relative "weather"

class Airport

	include Weather

	DEFAULT_CAPACITY = 50

 	def initialize(arg = {})
 		@capacity = arg[:capacity] || DEFAULT_CAPACITY
 		@planes = []
 	end

	# def initialize
	# 	@planes = []
	# end

	# def planes 
	# 	@planes ||= []
	# 	end 

	def plane_count
		@planes.count
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def land(plane)
		raise "Airport is full" if full?
		@planes << plane
	end

	def take_off(plane)
		@planes.pop
	end

	def full?
		plane_count == capacity
	end

end