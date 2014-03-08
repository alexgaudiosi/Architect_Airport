require_relative "weather"

class Airport

	include Weather

	DEFAULT_CAPACITY = 50

 	def initialize(arg = {})
 		@capacity = arg[:capacity] || DEFAULT_CAPACITY
 		@planes = []
 	end

	def plane_count
		@planes.count
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def land(plane)
		if stormy? && full? 
			raise "Unable to land."
				else @planes << plane
			end
		end	

	def take_off(plane)
		if stormy? && full? 
			raise "Unable to takeoff."
		@planes.pop
		end
	end

	def full?
		plane_count == capacity
	end

end