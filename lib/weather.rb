module Weather

	def generator
		@number = rand(100)
	end

	def sunny?
		generator >= 21
	end

	def stormy?
		generator < 20
	end

end



	