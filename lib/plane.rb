require_relative "airport"

class Plane

	def flying?
		@flying = true
	end

	def grounded
		@flying = false
	end

end