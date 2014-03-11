require_relative "weather"

class Airport

	include Weather

	DEFAULT_CAPACITY = 10

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

	def full?
		plane_count == capacity
	end

	def closed?
		if stormy? || full?
			raise "Airport shut"
		end
	end

	def land(plane)
		if !closed? || plane.flying?
				@planes << plane
				plane.grounded
		end
	end	

	def take_off(plane)
		if !closed?
				@planes.delete(plane)
				plane.flight
		end
	end
end