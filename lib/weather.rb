module Weather

	def generator
		@number = rand(100)
	end

	def sunny?
		generator >= 15
	end

	def stormy?()
		generator < 15
	end

end



	