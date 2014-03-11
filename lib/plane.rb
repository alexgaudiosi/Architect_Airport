require_relative "airport"

class Plane

	def initialize
		flight
	end

	def flying?
		@flying
	end

	def grounded
		@flying = false
	end

	def flight
		@flying = true
	end

end